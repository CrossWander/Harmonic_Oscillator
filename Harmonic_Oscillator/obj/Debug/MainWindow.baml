   M S B A M L   `   `   `  ����  Harmonic_Oscillator$    Harmonic_Oscillator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   c _Microsoft.Expression.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35=ed4http://schemas.microsoft.com/expression/2010/drawing  6�     � Title$  
MainWindow��5   	   $��692.5��6   $	��693��6+    � WindowStartupLocation$ CenterScreen=�67    � WindowStyle$
 None=�6\    � AllowsTransparency . 
������  � 	Resources 5         OnClick1 �� TargetProperty �� 
TargetName R� KeyTime  System.Windows.Visibility   Visible	 R� Value  OnClick2
   Hidden  OnClick3  OnClick48  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value  OnClick5��%�  &	        &	 �    &	 �    &	 �    &	 |
    �� 5   
   .��5      T� $ (UIElement.Visibility)�6,   $ Results_window��6_   ..�5	      i� $ 0��6)   #	 Z 65   5
      T� 5      $ (UIElement.Visibility)�6,   $ Hide_result��6_   ..�5      i� $ 0��6)   #	 Z 65   5      T� 5      $ (UIElement.Visibility)�6,   $ Print_Result��6_   ..�5      i� $ 0��6)   #	 Z 65   5      5      �� 5   
   .��5      T� $ (UIElement.Visibility)�6,   $ Show_result��6_   ..�5      i� $ 0��6)   #	 Z 65   5      T� 5      $ (UIElement.Visibility)�6,   $ Hide_result��6_   ..�5      i� $ 0��6)   #	 Z
 65   5      T� 5      $ (UIElement.Visibility)�6,   $ Results_window��6_   ..�5      i� $ 0��6)   #	 Z
 65   5      T� 5      $ (UIElement.Visibility)�6,   $ Print_Result��6_   ..�5      i� $ 0��6)   #	 Z
 65   5      5      �� 5    
   .��5!      T� $ (UIElement.Visibility)�6,   $ Show_result��6_   ..�5"      i� $ 0��6)   #	 Z
 65   5#      T� 5$      $ (UIElement.Visibility)�6,   $ Hide_result��6_   ..�5%      i� $ 0��6)   #	 Z 65   5&      T� 5'      $ (UIElement.Visibility)�6,   $ Results_window��6_   ..�5(      i� $ 0��6)   #	 Z 65   5)      T� 5*      $ (UIElement.Visibility)�6,   $ Print_Result��6_   ..�5+      i� $ 0��6)   #	 Z 65   5,      5-      �� 5.   
   .��5/      T� $ (UIElement.Visibility)�6,   $ Frequency_setting_on��6_   ..�50      i� $ 0:0:0.6��6)   #	 Z
 6;   51      T� 52      $ (UIElement.Visibility)�6,   $ Frequency_setting_off��6_   ..�53      i� $ 0:0:0.6��6)   #	 Z 6;   54      T� 55      $ (ContentControl.Content)�6,   $ label��6a   ..�56      i� $ 0:0:0.4��6)   $%	 Шаг изм. частоты :��6;   57      �� 58      $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6+   $ label1��6x   .g�59        $ 0:0:0.4��6&   $ 	#FFF7960B��68   5:      T� 5;      $ (TextElement.FontWeight)�6,   $ label1��6a   ..�5<      i� $ 0:0:0.4��6)   	 5=      #�5>      Bold"�6+   5@      5A      T� 5B      $ (ContentControl.Content)�6,   $ label2��6a   ..�5C      i� $ 0:0:0.4��6)   $'	 !Стандартный режим��6;   5D      �� 5E      $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6+   $ label2��6x   .g�5F        $ 0:0:0.4��6&   $ White��68   5G      T� 5H      $ (TextElement.FontWeight)�6,   $ label2��6a   ..�5I      i� $ 0:0:0.4��6)   	 5J      #�5K      Bold"�6+   5M      5N      5O      �� 5P   
   .��5Q      T� $ (UIElement.Visibility)�6,   $ Frequency_setting_off��6_   ..�5R      i� $ 0:0:0.6��6)   #	 Z
 6;   5S      T� 5T      $ (UIElement.Visibility)�6,   $ Frequency_setting_on��6_   ..�5U      i� $ 0:0:0.6��6)   #	 Z 6;   5V      T� 5W      $ (ContentControl.Content)�6,   $ label��6a   ..�5X      i� $ 0:0:0.4��6)   $	 Частота :��6;   5Y      �� 5Z      $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6+   $ label2��6x   .g�5[        $ 0:0:0.4��6&   $ 	#FFF7960B��68   5\      T� 5]      $ (TextElement.FontWeight)�6,   $ label2��6a   ..�5^      i� $ 0:0:0.4��6)   	 5_      #�5`      Bold"�6+   5b      5c      T� 5d      $ (ContentControl.Content)�6,   $ label1��6a   ..�5e      i� $ 0:0:0.4��6)   $B	 <Вычисление максимальной частоты��6;   5f      �� 5g      $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6+   $ label1��6x   .g�5h        $ 0:0:0.4��6&   $ White��68   5i      5j      5k       � Triggers 5l      :� 5m   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ generate��66   .[�5n      �� #��[  6   5o      :� 5p   
   $ ButtonBase.Click��6   $ Hide_result��66   .[�5q      �� -   5         ��Name$ OnClick2_BeginStoryboard��5q      #��[ 6@   5r      :� 5s   
   $ ButtonBase.Click��6   $ Show_result��66   .[�5t      �� -   5        $ OnClick2_BeginStoryboard1��5t      #��[ 6A   5u      :� 5v   
   $ MenuItem.Click��6   $ menuItem��64   .[�5w      �� #��[  6   5x      :� 5y   
   $ ButtonBase.Click��6   $ Frequency_setting_on��66   .[�5z      �� -   5        $ OnClick4_BeginStoryboard��5z      #��[ 6@   5{      :� 5|   
   $ ButtonBase.Click��6   $ Frequency_setting_off��66   .[�5}      �� -   5        $ OnClick5_BeginStoryboard��5}      #��[ 6@   5~      .��5�      � .+�5�   
   �� -   5         ��Name$ Main_Window��5�      ���	#FF1F1F1F$	��405��6:   $	��Top=�6G   �� 5�   
   -   5        $ Title��5�      ���	#FF444444$��36��64   $	��Top=�6@   6X   �� 5�   
   -   5        $H��BГенератор синусоидальных колебаний��5�      $
��Left=�6=   $��38.38��6X   $��	151,0,0,0q�6g   $	��Top=�6z   $	��395��6�   $��20(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
���   �$
��Bold"�6  6  �� 5�   
   -   5         ��Name$
 Exit��5�      $��Button��6   $��659.5,3.333,4.5,350.667q�60     Exit_button#���  6Q    5�       �� 
TargetType �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray �� 
TargetType ��Name �� Triggers P� Property P� Value �� 
TargetName��%t  &	       �� 5�      " ��6,   .�5�      ��  �@�FocusVisualStyle 5�      �� 5�      .�5�   "   ��  � �� 5�   &   �� 5�   *   .R�5�   .   �� $��2q�68    . #��� ��6^   $��1��6�   $	 1 2R�6�   5�   +   5�   #   5�      5�      �� 5�       � �� �	#FFDDDDDD63   �� 5�       � �� �	#FF70707064   �� 5�       � ��# � ��63   �� 5�       � ��$ 1q�68   �� 5�       � ��$ Center=�6C   �� 5�       � ��$ Center=�6A   �� 5�       � ��$ 1q�60   �� 5�       � �� 5�      �� 5�      " ��6.   .R�5�   "   � $
��Left=�6'   $��29��6B   $	��Top=�6N   $��29��6f   .+�5�   &   �� $ 	rectangle��60   ���	#FF444444$��Stretch=�6T   $
��Auto��6r   $��Stretch=�6�   $
��Auto��6�   $��2.5,-3.5,-5,3.5q�6�   �� 5�   &   $ 	textBlock��60   $��Stretch=�6C   $��5.25,-3.5,-2.75,3.5q�6a   $
��Wrap=�6~   $��Stretch=�6�   $
��Auto��6�   $
��Auto��6�   $��17.333(�6�   �� 6�   $��21.333(�6�   $� ��6�   �� 6�   $
��Bold"�6  $��21.333(�6  $�X��6%  �� 60  �� 6<  �� 6B  �� 6N  6U  5�   #    5�   "   P� 5�   &    �@��IsDefaulted . . �5�   *   �� $ 	rectangle��6C    � ��$ 2.5,-3,-5,3q�6Z   �� 5�   *   $ 	textBlock��6C    � ��$ 5,-3,-2.5,3q�6Z   5�   '   P� 5�   &    �@J�IsMouseOver . . �5�   *   �� $ 	rectangle��6A    � �� �	#FF6C6C6C6X   �� 5�   *   $ 	rectangle��6C    � ��$ 2.5,-3.25,-5,3.25q�6Z   �� 5�   *   $ 	textBlock��6C    � ��$ 5,-3.25,-2.5,3.25q�6Z   5�   '   P� 5�   &    � �� . . �5�   *   �� $ 	rectangle��6A    � �� �	#FFC102026X   �� 5�   *   $ 	rectangle��6C    � ��$ 2.5,-3,-5,3q�6Z   �� 5�   *   $ 	textBlock��6C    � ��$ 5,-3,-2.5,3q�6Z   5�   '   P� 5�   &    � {� .  6C   5�      5�      5�      5�      5�      o� 5�   
   $
��Left=�6   $��27��6*   $��0,36,0,0q�66   $	��Top=�6H   $	��693��6`   ���	#FF1F1F1F.@�5�      m� -	   5         m�Name$ menuItem��5�      $��Генерировать��6)   $��27��6?   $	��115��6K   $��16(�6W   ���	#FFF7F7F76|   m� 5�      -
   5        $ About��5�      $��О программе��6&   ���	#FFF7F7F7$��16(�6R   6a   5�      �� 5�   
   -   5        $ generate��5�      $��Генерировать��6#   $
��Left=�6:   $
��43.9��6U   $��408.5,307.933,0,0q�6c   $	��Top=�6~   $	��184��6�    J� RenderTransformOrigin$ 0.495,0.552&�6�     generate_button#���  6�    5�        FocusVisual  Button.Static.Background  �� Color 	 Button.Static.Border 
 Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground! �� RadiusX" �� RadiusY# �� TextAlignment��%�  &	       &	 �     &		 �     &	
 �     &	     &	 6    &	 Y    &	 |    &	 �    &	 �    &	 �    7  7  7 	 �� 5�      .�5�      ��  � �� 5�      �� 5�      .R�5�   "   �� $��2q�6,    . #��� ��6R   $��1��6�   $	 1 2R�6�   5�      5�      5�      �� 5�      $  	#FFDDDDDD��6C   �� 5�      $  	#FF707070��6?   �� 5�      $  	#FFBEE6FD��6F   �� 5�      $  	#FF3C7FB1��6B   �� 5�      $  	#FFC4E5F6��6D   �� 5�      $  	#FF2C628B��6@   �� 5�      $  	#FFF4F4F4��6E   �� 5�      $  	#FFADB2B5��6A   �� 5�      $  	#FF838383��6E   �� 5�      " ��60   .�5�      ��  �@�FocusVisualStyle8   69   �� 5�       � ��8  63   �� 5�       � ��8  64   �� 5�       � ��# � ��63   �� 5�       � ��$ 1q�68   �� 5�       � ��$ Center=�6C   �� 5�       � ��$ Center=�6A   �� 5�       � ��$ 1q�60   �� 5�       � �� 5�      �� 5�      " ��6.   .R�5�   "   � $
��Left=�6'   $
��43.9��6B   $	��Top=�6P   $	��184��6h   .+�5�   &   �� $ 	rectangle��60   ���	#FF444343$
��Left=�6T   $
��43.9��6o   $	��Top=�6}   $	��184��6�   $! 5��6�   $" 5��6�   �� 5�   &   $
��Left=�60   $��	10,10,0,0q�6K   $
��Wrap=�6^   $��Генерировать��6r   $	��Top=�6�   $
��23.9��6�   $	��164��6�   $��20(�6�   $# Center=�6�   $
��Bold"�6�   $��Segoe UI)�6�   5�   #    5�   "   P� 5�   &    �@��IsDefaulted . 6E   P� 5�   &    �@J�IsMouseOver . . �5�   *   �� $ 	rectangle��6A    � �� �	#FF8B5A286X   5�   '   P� 5�   &    � �� . . �5�   *   �� $ 	rectangle��6A    � �� �	#FFA858076X   5�   '   P� 5�   &    � {� .  6C   5�      5�      5�      5�      5�      �� 5�   
   $)��#Начальные парметры��6   $
��Left=�6/   $	��259��6J   $��59.5,108.933,0,0q�6W   $	��Top=�6q   $	��292��6�   $��18.667(�6�   
�������6�   �� 5�   
   $��Амплитуда :��6   $
��Left=�6&   $��38.38��6A   $��72.5,139.933,0,0q�6P   $	��Top=�6j   $	��148��6�   $��20(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
�������6�   �� 5�   
   -   5        $ ��Name$$ Amplitude_number��5�      $
��Left=�6,   $��29��6G   $��276,149,0,0q�6S   % �� TextWrapping$
% Wrap=�6h   $	��Top=�6|   $��66��6�   $��1��6�   & �� TextAlignment$& Center=�6�   $��18.667(�6�   6�   �� 5�   
   -   5        ' ��Name$' label��5�      $��Частота :��6   $
��Left=�63   $��38.38��6N   $��72.5,183.313,0,0q�6]   $	��Top=�6w   $	��182��6�   $��20(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
�������6�   �� 5�   
   -   5        $$ Frequency_number��5�      $
��Left=�6,   $��29��6G   $��276,193,0,0q�6S   $
% Wrap=�6h   $	��Top=�6|   $��66��6�   $��50��6�   $��18.667(�6�   $& Center=�6�   6�   �� 5�   
   $��
Фаза :��6   $
��Left=�6!   $��38.38��6<   $��72.5,226.693,0,0q�6K   $	��Top=�6e   $	��102��6}   $��20(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
�������6�   �� 5�   
   -   5        $$ Phase_number��5�      $
��Left=�6(   $��29��6C   $��276,236,0,0q�6O   $
% Wrap=�6d   $	��Top=�6x   $��66��6�   $& Center=�6�   $��18.667(�6�   $��0��6�   6�   �� 5�   
   $!��Погрешность (%):��6   $
��Left=�6+   $��38.38��6F   $��72.5,270.073,0,0q�6U   $	��Top=�6o   $	��183��6�   $��20(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
�������6�   �� 5�   
   -   5        $$ Error_number��5�      $
��Left=�6(   $��29��6C   $��276,279,0,0q�6O   $
% Wrap=�6d   $	��Top=�6x   $��66��6�   $ 0.625,0.806&�6�   $& Center=�6�   $��18.667(�6�   $��1��6�   6�   �� 5�   
   $'��!T моделирования(с):��6   $
��Left=�6.   $��38.38��6I   $��72.5,313.453,0,0q�6X   $	��Top=�6r   $��213.333��6�   $��20(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
�������6�   �� 5�   
   -   5        $$ Time_number��5�      $
��Left=�6'   $��29��6B   $��276,323,0,0q�6N   $
% Wrap=�6c   $	��Top=�6w   $��66��6�   $ 0.625,0.806&�6�   $& Center=�6�   $��18.667(�6�   $��1��6�   6�   �� 5�   
   $��Выбор метода:��6   $
��Left=�6*   $��374.5,108.933,0,0q�6E   $	��Top=�6`   $��169.703��6x   $��270.667��6�   $��18.667(�6�   
�������6�   	� 5�   
   -   5        ( 	�Name$( method_Euler��5�      $��метод Ейлера��6,   $
��Left=�6C   $��392,149.23,0,0q�6^   $	��Top=�6v   $��18.667(�6�   
�������$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   ) d� 	IsChecked$
) TrueY�6�   	� 5�   
   -   5        $( method_Runge_Kutta��5�      $&�� метод Рунге-Кутты��62   $
��Left=�6N   $��392,187.689,0,0q�6i   $	��Top=�6�   $��18.667(�6�   
�������$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   	� 5   
   -   5        $( method_Adams_Bachfort��5      $.��(метод Адамса-Башфорта��65   $
��Left=�6U   $��392,231.069,0,0q�6p   $	��Top=�6�   $��18.667(�6�   
�������$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   �� 5  
   -   5        $ Show_result��5     $��Button��6&   $
��Left=�67   $��	0,384,0,0q�6R   $	��Top=�6e   $	��693��6}   $��21��6�     Show_result_button#���  6�   $y�Hidden=�6�    5     * � Language��%=  &	       &	 �     &		 �     &	
 �     &	     &	 6    &	 Y    &	 |    &	 �    &	 �    &	 �    7  7  7 	 �� 5     .�5     ��  � �� 5     �� 5     .R�5  "   �� $��2q�6,    . #��� ��6R   $��1��6�   $	 1 2R�6�   5     5
     5     �� 5     $  	#FFDDDDDD��6C   �� 5     $  	#FF707070��6?   �� 5     $  	#FFBEE6FD��6F   �� 5     $  	#FF3C7FB1��6B   �� 5     $  	#FFC4E5F6��6D   �� 5     $  	#FF2C628B��6@   �� 5     $  	#FFF4F4F4��6E   �� 5     $  	#FFADB2B5��6A   �� 5     $  	#FF838383��6E   �� 5     " ��63   .�5     ��  �@�FocusVisualStyle8   69   �� 5      � ��8  63   �� 5      � ��8  64   �� 5      � ��# � ��63   �� 5      � ��$ 1q�68   �� 5      � ��$ Center=�6C   �� 5      � ��$ Center=�6A   �� 5      � ��$ 1q�60   �� 5      � �� 5     �� 5      " ��6.   .R�5!  "   � $
��Left=�6'   $��21��6B   $	��Top=�6N   $	��693��6f   .+�5"  &   �� $ 	rectangle��60   ���	#FF444343$
��Left=�6T   $��21��6o   $	��Top=�6{   $	��693��6�   �� 5#  &   $
��Left=�60   $��0q�6K   $
��Wrap=�6V   $	��Top=�6j   $	��693��6�   $��21��6�   $# Center=�6�   $��16(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   $
��Bold"�6  �� 6  $* ru-ru�6  $+�%Показать результаты��6+  �� 6H  �� 6T  6[  5$  #    5%  "   P� 5&  &    �@��IsDefaulted . 6E   P� 5'  &    �@J�IsMouseOver . . �5(  *   �� $ 	rectangle��6A    � �� �	#FF8B5A286X   5)  '   P� 5*  &    � �� . . �5+  *   �� $ 	rectangle��6A    � �� �	#FFA858076X   5,  '   P� 5-  &    � {� .  6C   5/     51     52     53     54     �� 55  
   -   5        $ Hide_result��55     $��Button��6&   $
��Left=�67   $��	0,384,0,0q�6R   $	��Top=�6e   $	��693��6}   $��21��6�     Hide_result_button#���  6�   $y�Hidden=�6�    56     ��%  &	       &	 �     &		 �     &	
 �     &	     &	 6    &	 Y    &	 |    &	 �    &	 �    &	 �    7  7  7 	 �� 57     .�58     ��  � �� 59     �� 5:     .R�5;  "   �� $��2q�6,    . #��� ��6R   $��1��6�   $	 1 2R�6�   5<     5>     5?     �� 5@     $  	#FFDDDDDD��6C   �� 5A     $  	#FF707070��6?   �� 5B     $  	#FFBEE6FD��6F   �� 5C     $  	#FF3C7FB1��6B   �� 5D     $  	#FFC4E5F6��6D   �� 5E     $  	#FF2C628B��6@   �� 5F     $  	#FFF4F4F4��6E   �� 5G     $  	#FFADB2B5��6A   �� 5H     $  	#FF838383��6E   �� 5I     " ��63   .�5J     ��  �@�FocusVisualStyle8   69   �� 5K      � ��8  63   �� 5L      � ��8  64   �� 5M      � ��# � ��63   �� 5N      � ��$ 1q�68   �� 5O      � ��$ Center=�6C   �� 5P      � ��$ Center=�6A   �� 5Q      � ��$ 1q�60   �� 5R      � �� 5S     �� 5T     " ��6.   .R�5U  "   � $
��Left=�6'   $��21��6B   $	��Top=�6N   $	��693��6f   .+�5V  &   �� $ 	rectangle��60   ���	#FF444343$
��Left=�6T   $��21��6o   $	��Top=�6{   $	��693��6�   �� 5W  &   $
��Left=�60   $��0q�6K   $
��Wrap=�6V   $'��!Скрыть результаты��6j   $	��Top=�6�   $��21��6�   $	��693��6�   $��16(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   $# Center=�6  $
��Bold"�6  5X  #    5Y  "   P� 5Z  &    �@��IsDefaulted . 6E   P� 5[  &    �@J�IsMouseOver . . �5\  *   �� $ 	rectangle��6A    � �� �	#FF8B5A286X   5]  '   P� 5^  &    � �� . . �5_  *   �� $ 	rectangle��6A    � �� �	#FFA858076X   5`  '   P� 5a  &    � {� .  6C   5c     5e     5f     5g     5h     �� 5i  
   -   5        $ Results_window��5i     ���	#FF1F1F1F$
��Left=�6=   $��287.5��6X   $��	0,405,0,0q�6g   $	��Top=�6z   $	��693��6�   $y�Hidden=�6�   �� 5j  
   -   5        $ Print_Result��5j     $
��Left=�6*   $	��228��6E   $��32.5,435,0,0q�6R   $
��Wrap=�6h   $	��Top=�6|   $��633.667��6�   ���	#FFFDFDFD$��20(�6�   $y�Hidden=�6�   �� 5k  
   -   5        $ Frequency_setting_on��5k     $��Button��6/   $
��Left=�6@   $��30.933��6[   $��259.5,68,0,0q�6k   $	��Top=�6�   $��83��6�     Frequency_setting_on#���  6�   + � ToolTip$�+ �Включить режим вычисления максимально возможной частоты синусоиды на CPU��6�    5l     , � 	Resources  Key9  3System.Windows.Media.Animation.EasingDoubleKeyFrame- O� KeyTime. O� Value/ F�Name0 �� Stretch1 N� EnterActions  Storyboard1��%�  &	       &	 �     &		 �     &	
 �     &	     &	 6    &	 Y    &	 |    &	 �    &	 �    &	 �    7  7  7 	 7  �� 5m     .�5n     ��  � �� 5o     �� 5p     .R�5q  "   �� $��2q�6,    . #��� ��6R   $��1��6�   $	 1 2R�6�   5r     5t     5u     �� 5v     $  	#FFDDDDDD��6C   �� 5w     $  	#FF707070��6?   �� 5x     $  	#FFBEE6FD��6F   �� 5y     $  	#FF3C7FB1��6B   �� 5z     $  	#FFC4E5F6��6D   �� 5{     $  	#FF2C628B��6@   �� 5|     $  	#FFF4F4F4��6E   �� 5}     $  	#FFADB2B5��6A   �� 5~     $  	#FF838383��6E   �� 5     " ��65   .�5�     ��  �@�FocusVisualStyle8   69   �� 5�      � ��8  63   �� 5�      � ��8  64   �� 5�      � ��# � ��63   �� 5�      � ��$ 1q�68   �� 5�      � ��$ Center=�6C   �� 5�      � ��$ Center=�6A   �� 5�      � ��$ 1q�60   �� 5�      � �� 5�     �� 5�     " ��6.   , 5�  "   ���� 5�  &   Storyboard1 .��5�  *   U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6H   $ 	rectangle��6�   .\�5�  .     $- 0��6C   $. 4.333Q�6O     5�  .   $- 0:0:0.1��6C   $. 10.083Q�6U     5�  .   $- 0:0:0.2��6C   $. 15.833Q�6U     5�  .   $- 0:0:0.3��6C   $. 22.458Q�6U     5�  .   $- 0:0:0.4��6C   $. 29.208Q�6U     5�  .   $- 0:0:0.5��6C   $. 38.27Q�6U     5�  .   $- 0:0:0.9��6C   $. 41.394Q�6U     5�  .   $- 0:0:1.2��6C   $. -0.023Q�6U   5�  +   U� 5�  *   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6H   $
 path��6�   .\�5�  .     $- 0��6C   $. 4.333Q�6O     5�  .   $- 0:0:0.1��6C   $. 10.083Q�6U     5�  .   $- 0:0:0.2��6C   $. 15.833Q�6U     5�  .   $- 0:0:0.3��6C   $. 22.458Q�6U     5�  .   $- 0:0:0.4��6C   $. 29.208Q�6U     5�  .   $- 0:0:0.5��6C   $. 38.27Q�6U     5�  .   $- 0:0:0.9��6C   $. 41.394Q�6U     5�  .   $- 0:0:1.2��6C   $. -0.023Q�6U   5�  +   U� 5�  *   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6H   $ 	rectangle��6�   .\�5�  .     $- 0��6C   $. -0.083Q�6O     5�  .   $- 0:0:0.1��6C   $. -0.02Q�6U     5�  .   $- 0:0:0.2��6C   $. 0.105Q�6U     5�  .   $- 0:0:0.3��6C   $. -0.02Q�6U     5�  .   $- 0:0:0.4��6C   $. 0.042Q�6U     5�  .   $- 0:0:0.5��6C   $. -0.02Q�6U     5�  .   $- 0:0:0.9��6C   $. -0.019Q�6U     5�  .   $- 0:0:1.2��6C   $. -0.019Q�6U   5�  +   U� 5�  *   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6H   $
 path��6�   .\�5�  .     $- 0��6C   $. -0.083Q�6O     5�  .   $- 0:0:0.1��6C   $. -0.02Q�6U     5�  .   $- 0:0:0.2��6C   $. 0.105Q�6U     5�  .   $- 0:0:0.3��6C   $. -0.02Q�6U     5�  .   $- 0:0:0.4��6C   $. 0.042Q�6U     5�  .   $- 0:0:0.5��6C   $. -0.02Q�6U     5�  .   $- 0:0:0.9��6C   $. -0.019Q�6U     5�  .   $- 0:0:1.2��6C   $. -0.019Q�6U   5�  +   5�  '   5�  #   .R�5�  "   � $
��Left=�6'   $��30.933��6B   $	��Top=�6R   $��83��6j   .+�5�  &   �� ���	#FF131313$
��Left=�6A   $��30.933��6\   $" 5��6l   $! 5��6x   $	��Top=�6�   $��83��6�   
���   �6�   �� 5�  &   $ 	rectangle��60   ���	#FFEEE7DF$
��Left=�6T   $��30.933��6o   $" 5��6   $! 5��6�   $	��Top=�6�   $��41.667��6�   $ 0.5,0.5&�6�   z�5�  *   V� 5�  .   .~�5�  2   �� �� 5�  2   �� 5�  2   T� 5�  2   5�  /   5�  '   F� 5�  &   $
/ path��6+   �����    �� ��I��� ��I��:� �    �:� p    �O���T@Q�I��O���T@Q�I�~$��~� @Q    ~$��~� @�        ��I�    ��I�U" �    U" 	���	#FF3A3A3A$
��Left=�6�   $��14.433��6  $��
7.27,8,0,0q�6  $
0 Fill=�6*  $	��Top=�69  $��28.396��6Q  $ 0.5,0.5&�6`  z�5�  *   V� 5�  .   .~�5�  2   �� �� 5�  2   �� 5�  2   T� 5�  2   5�  /   5�  '   5�  #    5�  "   P� 5�  &    �@��IsDefaulted . 6E   P� 5�  &    �@J�IsMouseOver . . �5�  *   �� $ 	rectangle��6C    � �� �	#FFE286006Z   5�  '   P� 5�  &    � �� . 1 5�  *   �� 5�  .   8�� 6>   . �5�  *   �� $ 	rectangle��6C    � �� �	#FFE286006Z   5�  '   P� 5�  &    � {� .  6C   5�     5�     5�     5�     5�     �� 5�  
   -   5        $' label2��5�     $'��!Стандартный режим��6    $
��Left=�6<   $��30.933��6W   $��72.5,68,0,0q�6g   $	��Top=�6|   $	��182��6�   $��16(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   ���	#FFF7960B$
��Bold"�6	  �� 5�  
   -   5        $ Frequency_setting_off��5�     $��Button��60   $
��Left=�6A   $��30.933��6\   $��259.5,68,0,0q�6l   $	��Top=�6�   $��83��6�     Frequency_setting_off#���  6�   $y�Hidden=�6�   $9+ 3Возврат в стандартный режим��6�    5�     ��%�  &	       &	 �     &		 �     &	
 �     &	     &	 6    &	 Y    &	 |    &	 �    &	 �    &	 �    7  7  7 	 7  �� 5�     .�5�     ��  � �� 5�     �� 5�     .R�5�  "   �� $��2q�6,    . #��� ��6R   $��1��6�   $	 1 2R�6�   5�     5�     5�     �� 5�     $  	#FFDDDDDD��6C   �� 5�     $  	#FF707070��6?   �� 5�     $  	#FFBEE6FD��6F   �� 5�     $  	#FF3C7FB1��6B   �� 5�     $  	#FFC4E5F6��6D   �� 5�     $  	#FF2C628B��6@   �� 5�     $  	#FFF4F4F4��6E   �� 5�     $  	#FFADB2B5��6A   �� 5�     $  	#FF838383��6E   �� 5�     " ��66   .�5�     ��  �@�FocusVisualStyle8   69   �� 5�      � ��8  63   �� 5�      � ��8  64   �� 5�      � ��# � ��63   �� 5�      � ��$ 1q�68   �� 5�      � ��$ Center=�6C   �� 5�      � ��$ Center=�6A   �� 5�      � ��$ 1q�60   �� 5�      � �� 5      �� 5     " ��6.   , 5  "   ���� 5  &   Storyboard1 .��5  *   U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6H   $ 	rectangle��6�   .\�5  .     $- 0��6C   $. -4.417Q�6O     5  .   $- 0:0:0.1��6C   $. -10.522Q�6U     5  .   $- 0:0:0.2��6C   $. -16.46Q�6U     5  .   $- 0:0:0.3��6C   $. -22.835Q�6U     5	  .   $- 0:0:0.4��6C   $. -28.085Q�6U     5
  .   $- 0:0:0.5��6C   $. -34.71Q�6U     5  .   $- 0:0:0.9��6C   $. -41.296Q�6U     5  .   $- 0:0:1.2��6C   $. 0.016Q�6U   5  +   U� 5  *   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6H   $
 path��6�   .\�5  .     $- 0��6C   $. -4.417Q�6O     5  .   $- 0:0:0.1��6C   $. -10.522Q�6U     5  .   $- 0:0:0.2��6C   $. -16.46Q�6U     5  .   $- 0:0:0.3��6C   $. -22.835Q�6U     5  .   $- 0:0:0.4��6C   $. -28.085Q�6U     5  .   $- 0:0:0.5��6C   $. -34.71Q�6U     5  .   $- 0:0:0.9��6C   $. -41.296Q�6U     5  .   $- 0:0:1.2��6C   $. 0.016Q�6U   5  +   U� 5  *   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6H   $ 	rectangle��6�   .\�5  .     $- 0��6C   $. 0Q�6O     5  .   $- 0:0:0.1��6C   $. -0.062Q�6U     5  .   $- 0:0:0.2��6C   $. -0.062Q�6U     5  .   $- 0:0:0.3��6C   $. -0.124Q�6U     5  .   $- 0:0:0.4��6C   $. -0.062Q�6U     5  .   $- 0:0:0.5��6C   $. 0.001Q�6U     5  .   $- 0:0:0.9��6C   $. -0.001Q�6U     5   .   $- 0:0:1.2��6C   $. 0.124Q�6U   5!  +   U� 5"  *   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6H   $
 path��6�   .\�5#  .     $- 0��6C   $. 0Q�6O     5$  .   $- 0:0:0.1��6C   $. -0.062Q�6U     5%  .   $- 0:0:0.2��6C   $. -0.062Q�6U     5&  .   $- 0:0:0.3��6C   $. -0.124Q�6U     5'  .   $- 0:0:0.4��6C   $. -0.062Q�6U     5(  .   $- 0:0:0.5��6C   $. 0.001Q�6U     5)  .   $- 0:0:0.9��6C   $. -0.001Q�6U     5*  .   $- 0:0:1.2��6C   $. 0.124Q�6U   5+  +   5,  '   5-  #   .R�5.  "   � $
��Left=�6'   $��30.933��6B   $	��Top=�6R   $��83��6j   .+�5/  &   �� ���	#FF171716$
��Left=�6A   $��30.933��6\   $" 5��6l   $! 5��6x   $	��Top=�6�   $��83��6�   
���   �6�   �� 50  &   $ 	rectangle��60   ���	#FFEEE7DF$
��Left=�6T   $��30.933��6o   $" 5��6   $! 5��6�   $	��Top=�6�   $��41.667��6�   $ 0.5,0.5&�6�   $��41.375,0,-0.042,0q�6�   z�51  *   V� 52  .   .~�53  2   �� �� 54  2   �� 55  2   T� 56  2   57  /   59  '   F� 5:  &   $
/ path��6+   �����    �� ��I��� ��I��:� �    �:� p    �O���T@Q�I��O���T@Q�I�~$��~� @Q    ~$��~� @�        ��I�    ��I�U" �    U" 	���	#FF3A3A3A$
��Left=�6�   $��14.433��6  $��48.645,8,0,0q�6  $
0 Fill=�6,  $	��Top=�6;  $��28.396��6S  $ 0.5,0.5&�6b  z�5;  *   V� 5<  .   .~�5=  2   �� �� 5>  2   �� 5?  2   T� 5@  2   5A  /   5C  '   5D  #    5E  "   P� 5F  &    �@��IsDefaulted . 6E   P� 5G  &    �@J�IsMouseOver . . �5H  *   �� $ 	rectangle��6C    � �� �	#FFE286006Z   5I  '   P� 5J  &    � �� . 1 5K  *   �� 5L  .   8�� 6>   . �5N  *   �� $ 	rectangle��6C    � �� �	#FFE286006Z   5O  '   P� 5P  &    � {� .  6C   5R     5T     5U     5V     5W     �� 5X  
   -   5        $' label1��5X     $B��<Вычисление максимальной частоты��6    $
��Left=�6J   $��30.933��6e   $��357.83,68,0,0q�6u   $	��Top=�6�   $��301.67��6�   $��16(�6�   $<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�6�   
�������$
��Bold"�6  5Z     5[     