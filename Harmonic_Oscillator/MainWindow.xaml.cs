﻿using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Diagnostics;
using System.IO;

namespace Harmonic_Oscillator
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        bool Freq_mode = false; //режим работы
        bool Freq_solve = false;
        double pi = Math.PI;
        string text;    //переменная для считывания значений из textbox
        double Amplitude;  //амплитуда
        double Frequency;  //частота
        double Phase;      //фаза
        double max_Error;      //максимальная погрещность (проценты)
        double Time_max;   //макс. время моделирования
        double h;   //шаг моделирования
        double w;   //круговая частота
        uint MAX_DLINA = 40000000;
        long steps;
        DateTime Start; // Время запуска
        DateTime Stoped; //Время окончания
        TimeSpan Elapsed = new TimeSpan(); // Разница
        TimeSpan Time;

        
      


        #region Interface_work
        private void Title_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
        	this.DragMove();    //Перетаскивание окна по нажатию клавиши мыши
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
		
		private void Frequency_setting_on_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            Freq_mode = true;
        }

        private void Frequency_setting_off_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            Freq_mode = false;
        }

        private void About_Click(object sender, RoutedEventArgs e)
        {
            AboutBox ab = new AboutBox();
            ab.Show();
        }

        #region Validation
        private void Validation_text(object sender, KeyEventArgs e)
        {
            if (Char.IsDigit((char)KeyInterop.VirtualKeyFromKey(e.Key)) == false)
            {
                e.Handled = true;
            }
            //backspace working code
            if (e.Key == Key.Back)
            {
                e.Handled = false;
            }
            if ((e.Key == Key.NumPad0) || (e.Key == Key.NumPad1) || (e.Key == Key.NumPad2) || (e.Key == Key.NumPad3) || (e.Key == Key.NumPad4) || (e.Key == Key.NumPad5) || (e.Key == Key.NumPad6) || (e.Key == Key.NumPad7) || (e.Key == Key.NumPad8) || (e.Key == Key.NumPad9))
            {
                e.Handled = false;
            }
            if (e.Key == Key.OemComma)
            {
                if (((sender as TextBox).Text.Length == 0) || ((sender as TextBox).SelectionStart == 0) || ((sender as TextBox).Text.IndexOf(',') > -1))
                {
                    e.Handled = true;
                    return;
                }

                e.Handled = false;
            }
        }
        #endregion
          
        #endregion

        private void generate_Click(object sender, RoutedEventArgs e)
        {
            this.Print_Result.Text = string.Empty;

            text = Amplitude_number.Text;
            Amplitude = double.Parse(text);
            text = Frequency_number.Text;
            Frequency = double.Parse(text);
            text = Phase_number.Text;
            Phase = double.Parse(text);
            text = Error_number.Text;
            max_Error = double.Parse(text);
            text = Time_number.Text;
            Time_max = double.Parse(text);

            Start = DateTime.Now;
            var timer = Stopwatch.StartNew();
            if (Freq_mode)
            {
                double freq_step = Frequency;
                double TTime;
                TTime = Time_max * 1000;
                Time = new TimeSpan(0, 0, 0, 0, (int)TTime);
                do
                {
                    w = 2 * pi * Frequency;
                    h = 0.01 * max_Error / w;
                    var ttimer = Stopwatch.StartNew();
                    if (method_Euler.IsChecked == true)
                        steps = solveEuler(Amplitude, Frequency, Phase, max_Error, Time_max, w, h);
                    if (method_Runge_Kutta.IsChecked == true)
                        steps = solveRunge_Kutta(Amplitude, Frequency, Phase, max_Error, Time_max, w, h);
                    if (method_Adams_Bachfort.IsChecked == true)
                        steps = solveAdams_Bachfort(Amplitude, Frequency, Phase, max_Error, Time_max, w, h);
                    ttimer.Stop();
                    if (Time.Milliseconds <= ttimer.ElapsedMilliseconds)
                    {
                        Freq_solve = true;
                    }
                    else
                        Frequency +=freq_step;
                } while (!Freq_solve);
                Frequency -= freq_step;
                Frequency /= Time_max;
            }
            w = 2 * pi * Frequency;
            h = 0.01 * max_Error / w;


            //генерирование синусоиды выбраным численным методом
            if (method_Euler.IsChecked == true)
                //вызов функции решений методом Ейлера
                steps = solveEuler(Amplitude, Frequency, Phase, max_Error, Time_max, w, h);
            if (method_Runge_Kutta.IsChecked == true)
                //вызов функции решений методом Рунге-Кутты
                steps = solveRunge_Kutta(Amplitude, Frequency, Phase, max_Error, Time_max, w, h);
            if (method_Adams_Bachfort.IsChecked == true)
                //вызов функции решений методом Адамса-Башфорта
                steps = solveAdams_Bachfort(Amplitude, Frequency, Phase, max_Error, Time_max, w, h);


            Stoped = DateTime.Now;
            Elapsed = Stoped.Subtract(Start);

            timer.Stop();

            if (Freq_mode)
            {
                this.Print_Result.Inlines.Add(new Bold(new Run("Максимальная частота: ")));
                this.Print_Result.Inlines.Add(new Run(Frequency.ToString()+"\n"));
            }
            this.Print_Result.Inlines.Add(new Bold(new Run("Начало выполнения: ")));
            this.Print_Result.Inlines.Add(new Run(String.Format("{0:00}:{1:00}:{2:00}.{3:000}",
            Start.Hour, Start.Minute, Start.Second, Start.Millisecond )));
            this.Print_Result.Inlines.Add(new Bold(new Run("\nКонец выполнения: ")));
            this.Print_Result.Inlines.Add(new Run(String.Format("{0:00}:{1:00}:{2:00}.{3:000}",
            Stoped.Hour, Stoped.Minute, Stoped.Second, Stoped.Millisecond )));
            this.Print_Result.Inlines.Add(new Bold(new Run("\nВремя выполнения: ")));
            this.Print_Result.Inlines.Add(new Run(String.Format("{0:00}:{1:00}:{2:00}.{3:000}",
            Elapsed.Hours, Elapsed.Minutes, Elapsed.Seconds,Elapsed.Milliseconds)));
          //  this.Print_Result.Inlines.Add(new Run("---" + timer.Elapsed));
            this.Print_Result.Inlines.Add(new Bold(new Run("\nКоличество шагов моделирования: ")));
            this.Print_Result.Inlines.Add(new Run(steps.ToString()));
            this.Print_Result.Inlines.Add(new Bold(new Run("\nРазмер одного шага моделирования: ")));
            this.Print_Result.Inlines.Add(new Run((Time_max/(2*pi*Frequency)).ToString()));

        }

        #region method_Euler
        long solveEuler(double Ampl, 
                        double Freq, 
                        double Phase,
                        double Error,
                        double max_Time,
                        double w,
                        double h)
        {
            long step = 0;
            double tSim;
            double xNew, xOld;
            double yNew, yOld;
            double dx, dy, delta; //погрешность

            double[] masX = new double[MAX_DLINA];
            double[] massOrigin = new double[MAX_DLINA];
            double[] massErr = new double[MAX_DLINA];
         /*   List<double> masX = new List<double>();
            List<double> massOrigin = new List<double>();
            List<double> massErr = new List<double>();*/

            tSim = h;

            //начало вычислений (начальные условия)
            xOld = Ampl * Math.Sin(Phase);
            yOld = Ampl * Math.Cos(Phase);


            massOrigin[0] = masX[0] = Ampl * Math.Sin(Phase);
            //massOrigin.Add(Ampl * Math.Sin(Phase));
            //masX.Add(Ampl * Math.Sin(Phase));
            step = 1;

            do
            {

                xNew = xOld + h * w * yOld;
                dx = (0.5*h)*(Math.Abs((xNew-xOld)));

                yNew = yOld + h * (-w * xOld);
                dy = (0.5*h)*(Math.Abs((yNew - yOld)));

                if ((!Freq_mode)||(Freq_solve))
                {
                    masX[step] = xNew;
                    massOrigin[step] = Ampl * Math.Sin(w * tSim + Phase);
                    massErr[step] = Math.Abs(Ampl * Math.Sin(w * tSim + Phase) - xNew);
                }

                xOld = xNew;
                yOld = yNew;

                if (dx > dy) delta = dx;
                else delta = dy;

            /*    masX.Add(xNew);
                massOrigin.Add(Ampl * Math.Sin(w * tSim + Phase));
                massErr.Add(Math.Abs(Ampl * Math.Sin(w * tSim + Phase) - xNew));*/

                step++; //for debug
                tSim += h;


            } while ((delta<=Error)&&(tSim <= max_Time));
            if ((!Freq_mode) || (Freq_solve))
            {
                double time = 0;
               // long perem = 0;
               // int i = 0;
              /*  var arr = new string[] { "sin_Euler1.dat", "sin_Euler2.dat", "sin_Euler3.dat",
                    "sin_Euler4.dat", "sin_Euler5.dat","sin_Euler6.dat","sin_Euler7.dat","sin_Euler8.dat",
                    "sin_Euler9.dat","sin_Euler10.dat","sin_Euler11.dat","sin_Euler12.dat","sin_Euler13.dat",
                    "sin_Euler14.dat","sin_Euler15.dat","sin_Euler16.dat","sin_Euler17.dat","sin_Euler18.dat",
                    "sin_Euler19.dat","sin_Euler20.dat","sin_Euler21.dat","sin_Euler22.dat","sin_Euler23.dat"};
                  bool perv_zap = true;
               */
                StreamWriter sw = new StreamWriter(new FileStream(@"sin_Euler.dat", FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read));

              /*  for (int j = 0; j < step; j++)
                {  
                    if (perem < 1000000)
                    {
                            sw.WriteLine(time + " " + massOrigin[j] + " " + masX[j] + " " + massErr[j]);                     
                    }
                    else
                    {
                        perem = 0;
                        i++;
                    }
                    if (!perv_zap)
                    {
                        if ((perem == 0))
                            sw = new StreamWriter(new FileStream(@arr[i], FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read));
                    }
                    perem++;
                    time += h;
                    perv_zap = false;
                }*/
                for (int j = 0; j < step; j++)
                {
                    sw.WriteLine(time + " " + massOrigin[j] + " " + masX[j] + " " + massErr[j]);
                    //столбцы:  время  синус(оригинал)  синус по методу  погрешность 
                    time += h;
                }
                sw.Close();
                Freq_solve = false;
            }
            return step;
        }

        #endregion

        #region method_Runge-Kutta
        long solveRunge_Kutta(double Ampl,
                        double Freq,
                        double Phase,
                        double Error,
                        double max_Time,
                        double w,
                        double h)
        {
            long step = 0;
            double tSim;
            double xNew, xOld;
            double yNew, yOld;
            double kx1, kx2, kx3, kx4;
            double ky1, ky2, ky3, ky4;
            double dx, dy, delta; //погрешность

            double[] masX = new double[MAX_DLINA];
            double[] massOrigin = new double[MAX_DLINA];
            double[] massErr = new double[MAX_DLINA];


            tSim = h;

            xOld = Ampl * Math.Sin(Phase);
            yOld = Ampl * Math.Cos(Phase);

            massOrigin[0] = masX[0] = Ampl * Math.Sin(Phase);

            step = 1;

            do
            {

                kx1 = h * w * yOld;
                kx2 = h * (w * yOld + kx1 / 2.0);
                kx3 = h * (w * yOld - (0.5 - Math.Sqrt(0.5)) * kx1 + (1 - Math.Sqrt(0.5)) * kx2);
                kx4 = h * (w * yOld - Math.Sqrt(0.5) * kx2 + (1 + Math.Sqrt(0.5)) * kx3);

                xNew = xOld + kx1 / 6.0 + (1 - Math.Sqrt(0.5)) * kx2 / 3.0 + (1 + Math.Sqrt(0.5)) * kx3 / 3.0 + kx4 / 6.0;
                dx = (0.5 * h) * (Math.Abs((xNew - xOld)));


                ky1 = h * (-w * xOld);
                ky2 = h * (-w * xOld + ky1 / 2.0);
                ky3 = h * (-w * xOld - (0.5 - Math.Sqrt(0.5)) * ky1 + Math.Sqrt(0.5) * ky2);
                ky4 = h * (-w * xOld - Math.Sqrt(0.5) * ky2 + (1 + Math.Sqrt(0.5)) * ky3);

                yNew = yOld + ky1 / 6.0 + (1 - Math.Sqrt(0.5)) * ky2 / 3.0 + (1 + Math.Sqrt(0.5)) * ky3 / 3.0 + ky4 / 6.0;
                dy = (0.5 * h) * (Math.Abs((yNew - yOld)));

                xOld = xNew;
                yOld = yNew;

                if ((!Freq_mode)||(Freq_solve))
                {
                    masX[step] = xNew; 
                    massOrigin[step] = Ampl * Math.Sin(w * tSim + Phase);
                    massErr[step] = Math.Abs(Ampl * Math.Sin(w * tSim + Phase) - xNew);
                }

                if (dx > dy) delta = dx;
                else delta = dy;

                step++; //for debug
                tSim += h;


            } while ((delta <= Error) && (tSim <= max_Time));
            if ((!Freq_mode) || (Freq_solve))
            {
                StreamWriter sw = new StreamWriter(new FileStream(@"sin_RK.dat", FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read));
                double time = 0;
                for (int j = 0; j < step; j++)
                {
                    sw.WriteLine(time + " " + massOrigin[j] + " " + masX[j] + " " + massErr[j]);
                    //столбцы:  время  синус(оригинал)  синус по методу  погрешность 
                    time += h;
                }
                sw.Close();
                Freq_solve = false;
            }
            return step;
        }
        #endregion

        #region method_Adams-Bachfort
        long solveAdams_Bachfort(double Ampl,
                        double Freq,
                        double Phase,
                        double Error,
                        double max_Time,
                        double w,
                        double h)
        {
            long step = 0;
            double tSim;
            double[] x = new double[3];
            double[] y = new double[3];
            double dx, dy, delta; //погрешность

            double[] masX = new double[MAX_DLINA];
            double[] massOrigin = new double[MAX_DLINA];
            double[] massErr = new double[MAX_DLINA];


            tSim = h;

            x[0] = Ampl * Math.Sin(Phase);
            y[0] = Ampl * Math.Cos(Phase);

            x[1] = x[0] + h * w * y[0];
            y[1] = y[0] + h * (-w * x[0]);

            massOrigin[0] = masX[0] = Ampl * Math.Sin(Phase);

            step = 1;

            do
            {

                x[2] = x[1] + h / 2.0 * (3 * w * y[1] - w * y[0]);
                dx = (0.5 * h) * (Math.Abs((x[2] - x[1])));
                y[2] = y[1] + h / 2.0 * (3 * (-w * x[1]) - (-w * x[0]));
                dy = (0.5 * h) * (Math.Abs((y[2] - y[1])));
                x[0] = x[1];
                x[1] = x[2];
                //---------//
                y[0] = y[1];
                y[1] = y[2];

                if ((!Freq_mode) || (Freq_solve))
                {
                    masX[step] = x[2];
                    massOrigin[step] = Ampl * Math.Sin(w * tSim + Phase);
                    massErr[step] = Math.Abs(Ampl * Math.Sin(w * tSim + Phase) - x[2]);
                }

                if (dx > dy) delta = dx;
                else delta = dy;
                step++; //for debug
                tSim += h;


            } while ((delta <= Error) && (tSim <= max_Time));
            if ((!Freq_mode) || (Freq_solve))
            {
                StreamWriter sw = new StreamWriter(new FileStream(@"sin_AB.dat", FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read));
                double time = 0;
                for (int j = 0; j < step; j++)
                {
                    sw.WriteLine(time + " " + massOrigin[j] + " " + masX[j] + " " + massErr[j]);
                    //столбцы:  время  синус(оригинал)  синус по методу  погрешность 
                    time += h;
                }
                sw.Close();
                Freq_solve = false;
            }
            return step;
        }
        #endregion
    }
}
