   M S B A M L   `   `   `  ����   Harmonic_Oscillator$    Harmonic_Oscillator.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _Microsoft.Expression.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35=ed4http://schemas.microsoft.com/expression/2010/drawing    � Title$  
MainWindow��$��692.5��$	��693�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � AllowsTransparency . 
������  � 	Resources    OnClick1 �� TargetProperty �� 
TargetName R� KeyTime  System.Windows.Visibility   Visible	 R� Value  OnClick2
   Hidden  OnClick3  OnClick48  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value  OnClick5��%�	  &	        &	 �     &	 %    &	 ]    &	 �    �� .��T� $ (UIElement.Visibility)�$ Results_window��..�i� $ 0��#	 Z T� $ (UIElement.Visibility)�$ Hide_result��..�i� $ 0��#	 Z T� $ (UIElement.Visibility)�$ Print_Result��..�i� $ 0��#	 Z �� .��T� $ (UIElement.Visibility)�$ Show_result��..�i� $ 0��#	 Z T� $ (UIElement.Visibility)�$ Hide_result��..�i� $ 0��#	 Z
 T� $ (UIElement.Visibility)�$ Results_window��..�i� $ 0��#	 Z
 T� $ (UIElement.Visibility)�$ Print_Result��..�i� $ 0��#	 Z
 �� .��T� $ (UIElement.Visibility)�$ Show_result��..�i� $ 0��#	 Z
 T� $ (UIElement.Visibility)�$ Hide_result��..�i� $ 0��#	 Z T� $ (UIElement.Visibility)�$ Results_window��..�i� $ 0��#	 Z T� $ (UIElement.Visibility)�$ Print_Result��..�i� $ 0��#	 Z �� .��T� $ (UIElement.Visibility)�$ Frequency_setting_on��..�i� $ 0:0:0.6��#	 Z
 T� $ (UIElement.Visibility)�$ Frequency_setting_off��..�i� $ 0:0:0.6��#	 Z T� $ (ContentControl.Content)�$ label��..�i� $ 0:0:0.4��$%	 Шаг изм. частоты :���� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ label1��.g�  $ 0:0:0.4��$ 	#FFF7960B��T� $ (TextElement.FontWeight)�$ label1��..�i� $ 0:0:0.4��	 #�Bold"�T� $ (ContentControl.Content)�$ label2��..�i� $ 0:0:0.4��$'	 !Стандартный режим���� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ label2��.g�  $ 0:0:0.4��$ White��T� $ (TextElement.FontWeight)�$ label2��..�i� $ 0:0:0.4��	 #�Bold"��� .��T� $ (UIElement.Visibility)�$ Frequency_setting_off��..�i� $ 0:0:0.6��#	 Z
 T� $ (UIElement.Visibility)�$ Frequency_setting_on��..�i� $ 0:0:0.6��#	 Z T� $ (ContentControl.Content)�$ label��..�i� $ 0:0:0.4��$	 Частота :���� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ label2��.g�  $ 0:0:0.4��$ 	#FFF7960B��T� $ (TextElement.FontWeight)�$ label2��..�i� $ 0:0:0.4��	 #�Bold"�T� $ (ContentControl.Content)�$ label1��..�i� $ 0:0:0.4��$B	 <Вычисление максимальной частоты���� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ label1��.g�  $ 0:0:0.4��$ White�� � Triggers :�  :� RoutedEvent$ ButtonBase.Click�� :� 
SourceName$ generate��.[��� #��[  :� $ ButtonBase.Click��$ Hide_result��.[��� -    ��Name$ OnClick2_BeginStoryboard��#��[ :� $ ButtonBase.Click��$ Show_result��.[��� -   $ OnClick2_BeginStoryboard1��#��[ :� $ MenuItem.Click��$ menuItem��.[��� #��[  :� $ ButtonBase.Click��$ Frequency_setting_on��.[��� -   $ OnClick4_BeginStoryboard��#��[ :� $ ButtonBase.Click��$ Frequency_setting_off��.[��� -   $ OnClick5_BeginStoryboard��#��[ .��� .+��� -    ��Name$ Main_Window�����	#FF1F1F1F$	��405��$	��Top=��� -   $ Title�����	#FF444444$��36��$	��Top=��� -   $H��BГенератор синусоидальных колебаний��$
��Left=�$��38.38��$��	151,0,0,0q�$	��Top=�$	��395��$��20(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
���   �$
��Bold"��� -    ��Name$
 Exit��$��Button��$��659.5,3.333,4.5,350.667q�  Exit_button#���    �� 
TargetType �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray �� 
TargetType ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	       �� " ��.���  �@�FocusVisualStyle �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R���  � �� �	#FFDDDDDD��  � �� �	#FF707070��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R�� $
��Left=�$��29��$	��Top=�$��29��.+��� $ 	rectangle�����	#FF444444$��Stretch=�$
��Auto��$��Stretch=�$
��Auto��$��2.5,-3.5,-5,3.5q��� $ 	textBlock��$��Stretch=�$��5.25,-3.5,-2.75,3.5q�$
��Wrap=�$��Stretch=�$
��Auto��$
��Auto��$��17.333(��� $��21.333(�$� ���� $
��Bold"�$��21.333(�$�X���� �� �� ��  P�  �@��IsDefaulted . . ��� $ 	rectangle�� � ��$ 2.5,-3,-5,3q��� $ 	textBlock�� � ��$ 5,-3,-2.5,3q�P�  �@J�IsMouseOver . . ��� $ 	rectangle�� � �� �	#FF6C6C6C�� $ 	rectangle�� � ��$ 2.5,-3.25,-5,3.25q��� $ 	textBlock�� � ��$ 5,-3.25,-2.5,3.25q�P�  � �� . . ��� $ 	rectangle�� � �� �	#FFC10202�� $ 	rectangle�� � ��$ 2.5,-3,-5,3q��� $ 	textBlock�� � ��$ 5,-3,-2.5,3q�P�  � {� .  o� $
��Left=�$��27��$��0,36,0,0q�$	��Top=�$	��693�����	#FF1F1F1F.@�m� -	    m�Name$ menuItem��$��Генерировать��$��27��$	��115��$��16(����	#FFF7F7F7m� -
   $ About��$��О программе�����	#FFF7F7F7$��16(��� -   $ generate��$��Генерировать��$
��Left=�$
��43.9��$��408.5,307.933,0,0q�$	��Top=�$	��184�� J� RenderTransformOrigin$ 0.495,0.552&�  generate_button#���     FocusVisual  Button.Static.Background  �� Color 	 Button.Static.Border 
 Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground! �� RadiusX" �� RadiusY# �� TextAlignment��%b  &	       &	 N     &		 c     &	
 x     &	 �     &	 �     &	 �     &	 �     &	 �     &	 �     &	     7  7  7 	 �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $  	#FFDDDDDD���� $  	#FF707070���� $  	#FFBEE6FD���� $  	#FF3C7FB1���� $  	#FFC4E5F6���� $  	#FF2C628B���� $  	#FFF4F4F4���� $  	#FFADB2B5���� $  	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R�� $
��Left=�$
��43.9��$	��Top=�$	��184��.+��� $ 	rectangle�����	#FF444343$
��Left=�$
��43.9��$	��Top=�$	��184��$! 5��$" 5���� $
��Left=�$��	10,10,0,0q�$
��Wrap=�$��Генерировать��$	��Top=�$
��23.9��$	��164��$��20(�$# Center=�$
��Bold"�$��Segoe UI)� P�  �@��IsDefaulted . P�  �@J�IsMouseOver . . ��� $ 	rectangle�� � �� �	#FF8B5A28P�  � �� . . ��� $ 	rectangle�� � �� �	#FFA85807P�  � {� .  �� $)��#Начальные парметры��$
��Left=�$	��259��$��59.5,108.933,0,0q�$	��Top=�$	��292��$��18.667(�
��������� $��Амплитуда :��$
��Left=�$��38.38��$��72.5,139.933,0,0q�$	��Top=�$	��148��$��20(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
��������� -   $ ��Name$$ Amplitude_number��$
��Left=�$��29��$��276,149,0,0q�% �� TextWrapping$
% Wrap=�$	��Top=�$��66��$��1��& �� TextAlignment$& Center=�$��18.667(��� -   ' ��Name$' label��$��Частота :��$
��Left=�$��38.38��$��72.5,183.313,0,0q�$	��Top=�$	��182��$��20(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
��������� -   $$ Frequency_number��$
��Left=�$��29��$��276,193,0,0q�$
% Wrap=�$	��Top=�$��66��$��50��$��18.667(�$& Center=��� $��
Фаза :��$
��Left=�$��38.38��$��72.5,226.693,0,0q�$	��Top=�$	��102��$��20(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
��������� -   $$ Phase_number��$
��Left=�$��29��$��276,236,0,0q�$
% Wrap=�$	��Top=�$��66��$& Center=�$��18.667(�$��0���� $!��Погрешность (%):��$
��Left=�$��38.38��$��72.5,270.073,0,0q�$	��Top=�$	��183��$��20(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
��������� -   $$ Error_number��$
��Left=�$��29��$��276,279,0,0q�$
% Wrap=�$	��Top=�$��66��$ 0.625,0.806&�$& Center=�$��18.667(�$��1���� $'��!T моделирования(с):��$
��Left=�$��38.38��$��72.5,313.453,0,0q�$	��Top=�$��213.333��$��20(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
��������� -   $$ Time_number��$
��Left=�$��29��$��276,323,0,0q�$
% Wrap=�$	��Top=�$��66��$ 0.625,0.806&�$& Center=�$��18.667(�$��1���� $��Выбор метода:��$
��Left=�$��374.5,108.933,0,0q�$	��Top=�$��169.703��$��270.667��$��18.667(�
�������	� -   ( 	�Name$( method_Euler��$��метод Ейлера��$
��Left=�$��392,149.23,0,0q�$	��Top=�$��18.667(�
�������$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�) d� 	IsChecked$
) TrueY�	� -   $( method_Runge_Kutta��$&�� метод Рунге-Кутты��$
��Left=�$��392,187.689,0,0q�$	��Top=�$��18.667(�
�������$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�	� -   $( method_Adams_Bachfort��$.��(метод Адамса-Башфорта��$
��Left=�$��392,231.069,0,0q�$	��Top=�$��18.667(�
�������$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)��� -   $ Show_result��$��Button��$
��Left=�$��	0,384,0,0q�$	��Top=�$	��693��$��21��  Show_result_button#���  $y�Hidden=� * � Language��%�  &	       &	 N     &		 c     &	
 x     &	 �     &	 �     &	 �     &	 �     &	 �     &	 �     &	     7  7  7 	 �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $  	#FFDDDDDD���� $  	#FF707070���� $  	#FFBEE6FD���� $  	#FF3C7FB1���� $  	#FFC4E5F6���� $  	#FF2C628B���� $  	#FFF4F4F4���� $  	#FFADB2B5���� $  	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R�� $
��Left=�$��21��$	��Top=�$	��693��.+��� $ 	rectangle�����	#FF444343$
��Left=�$��21��$	��Top=�$	��693���� $
��Left=�$��0q�$
��Wrap=�$	��Top=�$	��693��$��21��$# Center=�$��16(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�$
��Bold"��� $* ru-ru�$+�%Показать результаты���� ��  P�  �@��IsDefaulted . P�  �@J�IsMouseOver . . ��� $ 	rectangle�� � �� �	#FF8B5A28P�  � �� . . ��� $ 	rectangle�� � �� �	#FFA85807P�  � {� .  �� -   $ Hide_result��$��Button��$
��Left=�$��	0,384,0,0q�$	��Top=�$	��693��$��21��  Hide_result_button#���  $y�Hidden=� ��%{  &	       &	 N     &		 c     &	
 x     &	 �     &	 �     &	 �     &	 �     &	 �     &	 �     &	     7  7  7 	 �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $  	#FFDDDDDD���� $  	#FF707070���� $  	#FFBEE6FD���� $  	#FF3C7FB1���� $  	#FFC4E5F6���� $  	#FF2C628B���� $  	#FFF4F4F4���� $  	#FFADB2B5���� $  	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R�� $
��Left=�$��21��$	��Top=�$	��693��.+��� $ 	rectangle�����	#FF444343$
��Left=�$��21��$	��Top=�$	��693���� $
��Left=�$��0q�$
��Wrap=�$'��!Скрыть результаты��$	��Top=�$��21��$	��693��$��16(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�$# Center=�$
��Bold"� P�  �@��IsDefaulted . P�  �@J�IsMouseOver . . ��� $ 	rectangle�� � �� �	#FF8B5A28P�  � �� . . ��� $ 	rectangle�� � �� �	#FFA85807P�  � {� .  �� -   $ Results_window�����	#FF1F1F1F$
��Left=�$��287.5��$��	0,405,0,0q�$	��Top=�$	��693��$y�Hidden=��� -   $ Print_Result��$
��Left=�$	��228��$��32.5,435,0,0q�$
��Wrap=�$	��Top=�$��633.667�����	#FFFDFDFD$��20(�$y�Hidden=��� -   $ Frequency_setting_on��$��Button��$
��Left=�$��30.933��$��259.5,68,0,0q�$	��Top=�$��83��  Frequency_setting_on#���  + � ToolTip$�+ �Включить режим вычисления максимально возможной частоты синусоиды на CPU�� , � 	Resources  Key9  3System.Windows.Media.Animation.EasingDoubleKeyFrame- O� KeyTime. O� Value/ F�Name0 �� Stretch1 N� EnterActions  Storyboard1��%7  &	       &	 N     &		 c     &	
 x     &	 �     &	 �     &	 �     &	 �     &	 �     &	 �     &	     7  7  7 	 7  �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $  	#FFDDDDDD���� $  	#FF707070���� $  	#FFBEE6FD���� $  	#FF3C7FB1���� $  	#FFC4E5F6���� $  	#FF2C628B���� $  	#FFF4F4F4���� $  	#FFADB2B5���� $  	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��, ���� Storyboard1 .��U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 	rectangle��.\�  $- 0��$. 4.333Q�  $- 0:0:0.1��$. 10.083Q�  $- 0:0:0.2��$. 15.833Q�  $- 0:0:0.3��$. 22.458Q�  $- 0:0:0.4��$. 29.208Q�  $- 0:0:0.5��$. 38.27Q�  $- 0:0:0.9��$. 41.394Q�  $- 0:0:1.2��$. -0.023Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 path��.\�  $- 0��$. 4.333Q�  $- 0:0:0.1��$. 10.083Q�  $- 0:0:0.2��$. 15.833Q�  $- 0:0:0.3��$. 22.458Q�  $- 0:0:0.4��$. 29.208Q�  $- 0:0:0.5��$. 38.27Q�  $- 0:0:0.9��$. 41.394Q�  $- 0:0:1.2��$. -0.023Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ 	rectangle��.\�  $- 0��$. -0.083Q�  $- 0:0:0.1��$. -0.02Q�  $- 0:0:0.2��$. 0.105Q�  $- 0:0:0.3��$. -0.02Q�  $- 0:0:0.4��$. 0.042Q�  $- 0:0:0.5��$. -0.02Q�  $- 0:0:0.9��$. -0.019Q�  $- 0:0:1.2��$. -0.019Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 path��.\�  $- 0��$. -0.083Q�  $- 0:0:0.1��$. -0.02Q�  $- 0:0:0.2��$. 0.105Q�  $- 0:0:0.3��$. -0.02Q�  $- 0:0:0.4��$. 0.042Q�  $- 0:0:0.5��$. -0.02Q�  $- 0:0:0.9��$. -0.019Q�  $- 0:0:1.2��$. -0.019Q�.R�� $
��Left=�$��30.933��$	��Top=�$��83��.+��� ���	#FF131313$
��Left=�$��30.933��$" 5��$! 5��$	��Top=�$��83��
���   ��� $ 	rectangle�����	#FFEEE7DF$
��Left=�$��30.933��$" 5��$! 5��$	��Top=�$��41.667��$ 0.5,0.5&�z�V� .~��� �� �� T� F� $
/ path�������    �� ��I��� ��I��:� �    �:� p    �O���T@Q�I��O���T@Q�I�~$��~� @Q    ~$��~� @�        ��I�    ��I�U" �    U" 	���	#FF3A3A3A$
��Left=�$��14.433��$��
7.27,8,0,0q�$
0 Fill=�$	��Top=�$��28.396��$ 0.5,0.5&�z�V� .~��� �� �� T�  P�  �@��IsDefaulted . P�  �@J�IsMouseOver . . ��� $ 	rectangle�� � �� �	#FFE28600P�  � �� . 1 �� 8�� . ��� $ 	rectangle�� � �� �	#FFE28600P�  � {� .  �� -   $' label2��$'��!Стандартный режим��$
��Left=�$��30.933��$��72.5,68,0,0q�$	��Top=�$	��182��$��16(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)����	#FFF7960B$
��Bold"��� -   $ Frequency_setting_off��$��Button��$
��Left=�$��30.933��$��259.5,68,0,0q�$	��Top=�$��83��  Frequency_setting_off#���  $y�Hidden=�$9+ 3Возврат в стандартный режим�� ��%W  &	       &	 N     &		 c     &	
 x     &	 �     &	 �     &	 �     &	 �     &	 �     &	 �     &	     7  7  7 	 7  �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $  	#FFDDDDDD���� $  	#FF707070���� $  	#FFBEE6FD���� $  	#FF3C7FB1���� $  	#FFC4E5F6���� $  	#FF2C628B���� $  	#FFF4F4F4���� $  	#FFADB2B5���� $  	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��, ���� Storyboard1 .��U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 	rectangle��.\�  $- 0��$. -4.417Q�  $- 0:0:0.1��$. -10.522Q�  $- 0:0:0.2��$. -16.46Q�  $- 0:0:0.3��$. -22.835Q�  $- 0:0:0.4��$. -28.085Q�  $- 0:0:0.5��$. -34.71Q�  $- 0:0:0.9��$. -41.296Q�  $- 0:0:1.2��$. 0.016Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 path��.\�  $- 0��$. -4.417Q�  $- 0:0:0.1��$. -10.522Q�  $- 0:0:0.2��$. -16.46Q�  $- 0:0:0.3��$. -22.835Q�  $- 0:0:0.4��$. -28.085Q�  $- 0:0:0.5��$. -34.71Q�  $- 0:0:0.9��$. -41.296Q�  $- 0:0:1.2��$. 0.016Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ 	rectangle��.\�  $- 0��$. 0Q�  $- 0:0:0.1��$. -0.062Q�  $- 0:0:0.2��$. -0.062Q�  $- 0:0:0.3��$. -0.124Q�  $- 0:0:0.4��$. -0.062Q�  $- 0:0:0.5��$. 0.001Q�  $- 0:0:0.9��$. -0.001Q�  $- 0:0:1.2��$. 0.124Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 path��.\�  $- 0��$. 0Q�  $- 0:0:0.1��$. -0.062Q�  $- 0:0:0.2��$. -0.062Q�  $- 0:0:0.3��$. -0.124Q�  $- 0:0:0.4��$. -0.062Q�  $- 0:0:0.5��$. 0.001Q�  $- 0:0:0.9��$. -0.001Q�  $- 0:0:1.2��$. 0.124Q�.R�� $
��Left=�$��30.933��$	��Top=�$��83��.+��� ���	#FF171716$
��Left=�$��30.933��$" 5��$! 5��$	��Top=�$��83��
���   ��� $ 	rectangle�����	#FFEEE7DF$
��Left=�$��30.933��$" 5��$! 5��$	��Top=�$��41.667��$ 0.5,0.5&�$��41.375,0,-0.042,0q�z�V� .~��� �� �� T� F� $
/ path�������    �� ��I��� ��I��:� �    �:� p    �O���T@Q�I��O���T@Q�I�~$��~� @Q    ~$��~� @�        ��I�    ��I�U" �    U" 	���	#FF3A3A3A$
��Left=�$��14.433��$��48.645,8,0,0q�$
0 Fill=�$	��Top=�$��28.396��$ 0.5,0.5&�z�V� .~��� �� �� T�  P�  �@��IsDefaulted . P�  �@J�IsMouseOver . . ��� $ 	rectangle�� � �� �	#FFE28600P�  � �� . 1 �� 8�� . ��� $ 	rectangle�� � �� �	#FFE28600P�  � {� .  �� -   $' label1��$B��<Вычисление максимальной частоты��$
��Left=�$��30.933��$��357.83,68,0,0q�$	��Top=�$��301.67��$��16(�$<��6/Harmonic_Oscillator;component/Fonts/#Arial Unicode MS)�
�������$
��Bold"�