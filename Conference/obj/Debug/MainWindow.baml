   M S B A M L   `   `   `  ����E  AConference, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Conference
Conference  5   	       Conference.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Conference     5   	     � Title$4  .Конференция по Блокчейну��5      $	��800��6)   $
��1200��66    � Icon$ Image/icon.ico��6C   $	��900��6Y   $	��650��6h   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��100 �6   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��100��6.   $��0��6;   ���#0000cc.+�5      �� $��Image/icon.ico��6   $��75��6,   $��25 0 0 0q�68   �� 5      -   5         ��Name$ 	EventRead��5   +   $��Мероприятия��6   $	��125��6V   $��30��6b   $��25 0 0 0q�6n   �� 5      -   5        $ SignIn��5   .   $"��Авторизоваться��6   $	��125��6S   $��30��6_   $��25 0 0 0q�6k   5       � 5   
   -   5          �Name$ 	MainFrame��5      $��1��6     � NavigationUIVisibility$ Hidden=�60   �� 5   
   $ 
Horizontal=�6   $��2��6.   ���#0000cc.+�5      �� -   5        $ SignOut��5   %   $��
Выйти��6   $	��125��6L   $��30��6X   $��25 0 0 0q�6d   5      5      5      