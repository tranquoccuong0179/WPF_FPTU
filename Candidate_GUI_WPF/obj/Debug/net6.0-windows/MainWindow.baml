   M S B A M L   `   `   `  ����L  HCandidate_GUI_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Candidate_GUI_WPFCandidate_GUI_WPF  5   	   "    Candidate_GUI_WPF.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:Candidate_GUI_WPF     5   	     � WindowStartupLocation$  CenterScreen=�5       � WindowStyle$
 None=�6?    � AllowsTransparency$
 True��6R   
������  � Title$ 
MainWindow��5   	   $	��500��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $
��1.5* �6   .+�5   
   ��  �� CornerRadius$ 	10 0 0 10��6   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5      �  � Color$ #3AA9AD��6#   	 � Offset$	 0Q�63   � 5      $ #3AA9AD��6#   $	 1Q�63   5      ._�5      � .+�5      �� .+�5      � 
 � Points
 �    -1��� ;X�����#4EB1B66:   � 5      '
 �    �� �� ���� ��
�����#4EB1B66?   A� 5      $��250 450 0 0q�6   $��40��63   $��40��6>   ���#4EB1B66J   A� 5      $��
50 400 0 0q�6   $��40��62   $��40��6=   ���#4EB1B66I   5      �� 5      $��Center=�6   .+�5      �� $��Sign Up��6       	titleText#��[  6/   �� 5      $C��=Enter your personal info and create new account to connect us��6      
normalText#��[ 6e    J� Opacity$	 0.8Q�6�   $��20 30q�6�   �� 5       $��Sign Up��6    
 button#��[ 6/   5!      5"      5#      �� 5%   
   -   5        ���#ffffff$��1��5%   &   $ 	0 10 10 0��66   ._�5&      �� $��Center=�6   .+�5'      �� $��Sign in to App��6   #��[  62   ���#3AB19B6U   �� 5(       �� Orientation$ 
Horizontal=�6   $
��0 20q�66   $��Center=�6D   .+�5)      ��   buttonCircle#��[ 6   .��5*      �� $��/Images/Google.jpg��6    $��30��6<   $��30��6G   5+      �� 5,      #��[ 6   .��5-      �� $��/Images/Google.jpg��6    $��30��6<   $��30��6G   5.      �� 5/      #��[ 6   .��50      �� $��/Images/Google.jpg��6    $��30��6<   $��30��6G   51      52      �� 55      $��Or use your email info:��6   #��[ 67   ���#878787$��	0 10 0 15q�6p   �� 57      $��1q�6   ���#acb0af$
��70 7q�6C   $ 5��6Q   ._�58      � $	��7 9q�6    59      �� 5:      $
��auto �6/   �� 5;      $��* �6/   .+�5>      �� $��/Images/Email.jpg��6    $��20��6;   �� 5?      -   5         ��Name$ 	textEmail��5?   $   $��Email��6W     textHint#��[ 6d   �� 5@      -   5         ��Name$ txtEmail��5@   "     textBox#��[ 6W   5A      5B      �� 5C      $��1q�6   ���#acb0af$
��70 7q�6C   $ 5��6Q   ._�5D      � $	��7 9q�6    5E      �� 5F      $
��auto �6/   �� 5G      $��* �6/   .+�5J      �� $��/Images/Password.jpg��6    $��20��6>   �� 5K      -   5        $ textPassword��5K   $   $��Password��6]   #��[ 6m   G� 5L      -   5         G�Name$ txtPassword��5L   &   #��[ 6i   5M      5N      �� 5P      -   5        $��Login��5P        loginButton#��[ 6@   �� 5Q      -   5        $��Cancel��5Q        cancelButton#��[ 6B   $��5q�6h   5R      5S      5T      5U      