   M S B A M L   `   `   `  ����L  HCandidate_GUI_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Candidate_GUI_WPFCandidate_GUI_WPF  5   	   (    "Candidate_GUI_WPF.JobPostingWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:Candidate_GUI_WPF     5   	     � Title$  JobPostingWindow��5   	   $	��600��6"   $
��1000��6/    � WindowStartupLocation$ CenterScreen=�6<   .��5	      �  � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   �� ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5      �  � Color$ #3AA9AD��6#    � Offset$ 0Q�63   � 5      $ #3AA9AD��6#   $ 1Q�63   5      ._�5      � .+�5      �� .+�5      �  � Points �    -1 �� ;X�����#4EB1B66:   � 5      ' �    �� �� ���� ��
�����#4EB1B66?   A� 5      $��100 500 0 0q�6   $��40��63   $��40��6>   ���#4EB1B66J   A� 5      $��
50 400 0 0q�6   $��40��62   $��40��6=   ���#4EB1B66I   5      �� 5      $��Center=�6   $��10q�68   .+�5       �� $��Welcome, User��6    
�������$
��Bold"�6H   $��16(�6Z   $��10q�6h   �� 5!      $
��Home��6      navBarButton#��[  6,   �� 5"      -   5        $��Candidate Profile��5"      #��[  69   6_   �� 5#      $��Job Posting��6   #��[  63   $
��Bold"�5$      $��16(�5%      ���#FFDD57���#1F5A5B5'      �� 5(      -   5         ��Name$ 
btnSignOut��5(      $��Sign Out��6J     signOutButton#��[ 6]   5)      5*      5+      �� 5.   
   $��1��6   ���#F0F0F0	 �� CornerRadius$	 10��66   ._�5/      �� $
��Auto=�6   .��50      �� $��10q�6   .+�51      �� $��Job Posting��6    $��30(�63     	labelText#��[ 6A   $
��Bold"�6d   $��10q�6v   
 �� TextAlignment$
 Center=�6�   &   System.Windows.Controls.DataGrid  54      -   5          Name$ dgJobPostings��54         AutoGenerateColumns$
 True��66   $	��150��6Q   $��10q�6^      CanUserAddRows$ False��6�   � 57      $��10q�6    58      �� 59      $��1* �6/   �� 5:      $��2* �6/    � RowDefinitions 5<      �� 5=      $
��Auto �6,   �� 5>      $
��Auto �6,   �� 5?      $
��Auto �6,   �� 5@      $
��Auto �6,   .+�5D      �� $��Post ID:��6$   $��0��64   $��0��6A   #��[ 6Q   $��5,3,5,7q�6t   �� 5E      -   5         ��Name$ txtPostingID��5E   "   $��0��68   $��1��6E   $	��330��6U   $��30��6a   $��5q�6m   $��Center=�6x   �� 5H      $��Title:��6$   $��1��62   $��0��6?   #��[ 6O   $��5,7,5,3q�6r   �� 5I      -   5        $ txtTitle��5I   "   $��1��64   $��1��6A   $	��330��6Q   $��30��6]   $��5q�6i   $��Center=�6t   �� 5L      $��Description:��6$   $��2��68   $��0��6E   #��[ 6U   $��5,9,5,1q�6x   �� 5M      -   5        $ txtDescription��5M   "   $��2��6:   $��1��6G   $	��330��6W   $��70��6c    �� AcceptsReturn$
 True��6o   $��5q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   �� 5P      $��
Post Date:��6$   $��3��66   $��0��6C   #��[ 6S   $��5,7,5,3q�6v   (  "System.Windows.Controls.DatePicker  5Q      -   5          Name$ dpPostingDate��5Q   %   $��3��6<   $��1��6I   $	��330��6Y   $��25��6e   $��5q�6q   5R      �� 5U       �� Orientation$ 
Horizontal=�6!   $��Center=�6:   $��10q�6W   .+�5V      �� -   5        $ btnAdd��5V   /   $	��Add��6!     buttonGreen#��[ 6T   $	��120��6y   �� 5W      -	   5        $ 	btnUpdate��5W   2   $��Update��6!     buttonYellow#��[ 6]   $	��120��6�   �� 5X      -
   5        $ 	btnDelete��5X   2   $��Delete��6!     	buttonRed#��[ 6]   $	��120��6�   �� 5Y      -   5        $ btnClose��5Y   1   $��Close��6!     
buttonGray#��[ 6Z   $	��120��6~   5Z      5[      5\      5]      5^      5_      