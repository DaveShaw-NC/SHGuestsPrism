   M S B A M L   `   `   `  ����B  >ModuleA, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ModuleA.ViewsModuleA.Views  5      7 clr-namespace:ModuleA.ViewModelsModuleA.ViewModels  5      #    ModuleA.Views.GuestMasterView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:ModuleA.Views     5      0vms clr-namespace:ModuleA.ViewModels     5      P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . .��5      � -   5         �Name$ 
LayoutRoot��5      
�������$��10q�62    � 	Resources 5   
    �� 
TargetType   ccstyle �� Property �� Value  dgcstyle*  $System.Windows.Controls.DataGridCell  dgccentered �� BasedOn  dgcright  
dgcreasons  tbstyle  parkroadstyle��%  &	        '�� J     &	 �     &	 T    7  &	 �    7  &	 �    7  &	 z    &	 F    7  �� 5      " ��6   .�5      ��  � ��
 �����6/   5      �� 5      " ��6   .�5      ��  � �� 6+   �� *'%DataContext.SelectedPerson.Guest_Name+5      �� 5      "  6%   .�5      ��  � ��$
 Left=�6?   �� 5       � ��
 �   �60   �� 5       � ��$ Medium"�6/   5      �� 5      8   "  6L   .�5      ��  �@��TextAlignment$ Center=�6<   �� 5       � ��
 �   �6/   �� 5       � ��$
 Bold"�6/   5      �� 5      8   "  6I   .�5       ��  �@��TextAlignment$ Right=�6<   �� 5!       � ��
 �  ��6/   �� 5"       � ��$
 Bold"�6/   5#      �� 5$      8   "  6K   .�5%      ��  �@��TextAlignment$
 Left=�6<   �� 5&       � ��$ 10(�6-   �� 5'       � ��
 ��  �6/   �� 5(       � ��$ SemiBold"�6/   5)      �� 5*      " ��6$   .�5+      ��  � ��$ MS Serif)�6/   �� 5,       � ��$
 Bold"�6/   �� 5-       �@��TextAlignment$
 Left=�62   �� 5.       � ��$ 12(�6-   5/      �� 50      " ��6*   8   .�51      ��  � ��$ Italic$�6.   �� 52       � ��
 �<��6/   53      54       � RowDefinitions 55   
   �� 56      $��30 �6   �� 57      $	��300 �6   �� 58      $��* �6    � ColumnDefinitions 5:   
   �� 5;      $	��300 �6   �� 5<      $��5 �6   �� 5=      $��* �6   .+�5L   
   &   System.Windows.Controls.DataGrid  -   5        	  Name$	 _gridOfPeople��5L      
   RowDetailsVisibilityMode$
 VisibleWhenSelected=�6*   $��0, 10, 0, 0q�6Y   $��1��6n      SelectionMode$ Single=�5M   6   $	��Top=�6M    �� AlternationCount$ 2��5N         AlternatingRowBackground
 ��ح�$��12(�6Q      EnableRowVirtualization .    AutoGenerateColumns .  $	��400��5O   S   $
��Auto��6`   ��5M      �� *People+.  (System.Windows.Interactivity.Interaction   Triggers 5P      /  )System.Windows.Interactivity.EventTrigger  5Q         	EventName$ SelectionChanged��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5R      -  'Prism.Interactivity.InvokeCommandAction     Command 60   �� *PersonSelectedCommand+   CommandParameter 6Z   �� *SelectedItem+ �� ElementName$ _gridOfPeople��5S         Columns 5U      0  *System.Windows.Controls.DataGridTextColumn  5V      ,	  &System.Windows.Controls.DataGridColumn 	  Header$ Roster��6%   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 65   �� *Roster+ 
  ElementStyle 5W      �� 5X      .�5Y      ��  �@��TextAlignment$ Justify=�6H   �� 5Z       � ��
 ���F�6E   �� 5[       � ��$
 Bold"�6E   5\      5^        5_       	  Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6%   $ 
Guest Name��61    	  	CellStyle# [ 5`   H    6)   �� *
Guest_Name+6H     5a      $ Visit#��6%   # [ 65    5b   )   �� *Visit_Number+ �� StringFormat$ {0:N0}��5{      �� 5|   
    �� Orientation$ Vertical=�6   $��0��6,   $��2��6<   $
��Left=�6I   $��Bottom=�6d   $��10, 0, 20, 0q�6�   .+�5}      �� #��[ 68   ��6   �� *c_guests_count+68   �� 5~      #��[ 69   ��6   �� *d_guests_count+69   �� 5      #��[ 67   
����  ���6   �� *guests_count+6X   �� 5�      #��[ 67   ��6   �� *multis_count+67   �� 5�      #��[ 67   
����  ���6   �� *visits_count+6X   �� 5�      #��[ 66   ��6   �� *parkrd_count+66   �� 5�      #��[ 66   
���  ����6   �� *nretrn_count+6W   �� 5�      #��[ 66   
��� � ���6   �� *decesd_count+6W   5�      �� 5�   
   
����  �$��3��6*   $��1��64   $��1��6D   $��3��6Q   $
��Left=�5�      $��Stretch=�62    �� ShowsPreview . 6N   �� 5�   
   $��2��6   $��10, 0, 0, 0q�6*   $��1��6?   $��2��6L   !  Prism.Regions.RegionManager   
RegionName$ GuestDetailsRegion��5�      $
��Auto��6M   $
��Auto��6Z   #��[  5�      $	��Top=�5�      ]� 5�   
   $��Bottom=�6   $	��134��6/   $��2��6<   $��2��6L   .+�5�      �� $C��=D:\WPF Testing\SHGuestsPrism\ModuleA\samaritan_house_logo.jpg��6   $��Bottom=�6[   $	��150��5�      $��74��6!   $��Uniform=�6.   $
��Left=�6@   $
��Left=�5�      $��
25,0,0,9.8q�6/     J� RenderTransformOrigin$  0.585,0.178&�6C   �� 5�      $��40��6   $��60��6!   $
��Quit��6,   $��Bottom=�6;   $��Right=�6V   $��Center=�5�      
���  ��$��14(�6C   $
��Bold"�6Q   $��10q�6c    5�        5�      $ Click��6%   . 5�         64   �� *ExitCommand+5�      ! J� Effect! 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      5�      5�      5�      5�      