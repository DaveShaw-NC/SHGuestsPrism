   M S B A M L   `   `   `  ����B  >ModuleA, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ModuleA.ViewsModuleA.Views  5      #    ModuleA.Views.GuestDetailView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:ModuleA.Views     5      P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . .��5   
   � -   5         �Name$ 
LayoutRoot��5      ��5   
   
� 5       
� Center$ 466.8,235.2&�6"    
� GradientOrigin$ 466.8,235.2&�67    � MappingMode$ Absolute=�6T    
� RadiusY$ 235.2Q�6k    
� RadiusX$ 466.8Q�6{   .��5      �  � Color$ 	#FF80B3D4��6   � 5      $ 	#FF456AB4��6    � Offset$ 1Q�5      5      	 � ColumnDefinitions	 5   
   �� 5      $	��33* �6   �� 5      $	��33* �6   �� 5      $	��33* �6   
 � RowDefinitions
 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� $	��Top=�6   $��Center=�6)   $��2q�6F   $��0��6Q   $��0��6a   $��3��6n   .��5      �� $��	Underline{�6   $
��Bold"�6S   $��MS Reference Sans Serif)�6f   
�������$��16(�5   2   $��Italic$�6@   ��5   4   �� *label_content+5   @   5      �� 5!   
   $��0��6   $��0��6%   $��0, 20, 0, 0q�62   .+�5"      �� $
��Left=�6   $��10q�6/   $	��Top=�6;   $	��228��6S   $��24��6_   .��5#      �� $��	Underline{�6   $ ��Guest Personal Information��68   $
��Bold"�6Z   $��MS Reference Sans Serif)�6m   5$      � 5%       � Orientation$ Vertical=�6   $��0q�6/   .+�5&      �� $��
Birth Date��6   $��10, 0, 0, 0q�6-   (  "System.Windows.Controls.DatePicker  5'      $
��Left=�6O   $��10q�6j   $	��Top=�6v   $	��192��6�   {�.  $
��Bold"�5(   /      SelectedDate 5'      �� *SelectedPerson.BirthDate+5(   /   5)      � 5*      $ Vertical=�6   $��0q�6/   .+�5+      �� $
��Name��6   $��10, 0, 0, 0q�6'   �� 5,      $
��Left=�6E   $��29��6`   $��10q�6l   $	��Top=�5-      $	��192��62   $��14(�6>   $��Bottom=�6L   ��5,      �� *SelectedPerson.Guest_Name+5-   L   5.      � 5/      $ 
Horizontal=�6   $��0q�62   .+�50      �� $��SSN/W7��6   $��10, 0, 0, 0q�6)   $��Center=�6>   �� 51      $
��Left=�6   $��10q�65   $	��Top=�6A   $��23��6Y   $	��120��6e    �� 
IsReadOnly . $
��Bold"�52   P   $��Bottom=�53      ��52      �� *SelectedPerson.SSN+53      54      � 55      $ 
Horizontal=�6   $��0q�61   .+�56      �� $��Gender��6   $��10, 0, 0, 0q�6)   $��Center=�6>   �� 57      $
��Left=�6   $��23��65   $��10q�6A   $��40��6M   $��Bottom=�6X   $��Center=�58   A   $	��Top=�59      ��58      �� *SelectedPerson.Gender+59      5:      � 5;      $ 
Horizontal=�6   $��0q�62   .+�5<      �� $��Guest ID��6   $��10, 0, 0, 0q�6+   $��Center=�6@   $��Italic$�6c   $
��Bold"�6v   $��Right=�6�   �� 5=      $��Right=�6Y   $��Bottom=�6|   $��23��5>      $��10q�6&   $��12(�62   $	��Top=�6@   $��40��6X    . ��5=      �� *SelectedPerson.Guest_ID+ �� StringFormat$ {0:D}��5>   c   �� 5?      $��Visit ID��6   $��
5, 0, 0, 0q�6+   $��Center=�6?   $��Italic$�6b   $
��Bold"�6u   $��Right=�6�   �� 5@      $��Right=�6   $��23��6>   $��10q�6J   $��Bottom=�6V   $��12(�6x   $	��Top=�5B      $��40��62    . ��5A      �� *SelectedPerson.Visit_ID+$ {0:D}��5B   =   5C      5D      �� 5G   
   $��1��6   $��0��6%   $��0, 20, 0, 0q�63   .+�5H      �� $
��Left=�6   $��10q�6/   $	��Top=�6;   $	��228��6S   .��5I      �� $��	Underline{�6   $!��Guest Admission Information��68   $
��Bold"�6[   $��MS Reference Sans Serif)�6n   5J      � 5K      $ Vertical=�6   $��0q�6/   .+�5L      �� $��
Admit Date��6   $��10, 0, 0, 0q�6-     5M      -   5          Name$ admitdate_DatePicker��5M      $
��Left=�6;   $��10q�6V   $	��Top=�6b   $	��228��6z   {�.  $
��Bold"�5N   |    6   �� *SelectedPerson.Admit+$ {0:MM/dd/yyyy}��6|   5O      � 5P      $ Vertical=�6   $��0q�6/   .+�5Q      �� $��Reason��6   $��10, 0, 0, 0q�6*   �� 5R      $
��Left=�6   $��44��65   $��10, 10, 15, 15q�6A    �� TextWrapping$
 Wrap=�6Y   $	��Top=�6m   $	��228��6�   " �� VerticalScrollBarVisibility$ Visible=�5T      ��5S      �� *SelectedPerson.In_Reason+5T      5U      � 5V      $ Vertical=�6   $��0q�6/   .+�5W      �� $��Agency (Worker)��6   $��10, 0, 0, 0q�63   �� 5X      $
��Left=�6   $��44��65   $��10q�6A   $
 Wrap=�6M   $	��Top=�5Y   G   $	��228��6_   $ Visible=�5Z      ��5Y      �� *SelectedPerson.AgencyWorker+5Z      5[      � 5\      $ 
Horizontal=�6   $��0, 15q�61   .+�5]      �� $��Room Number��6   $��5, 10q�6.   �� 5^      $��23��6   $	��Top=�6&   $��25��6>   $��10q�6I   $��Center=�6U   $��Bottom=�6y   ��5_      �� *SelectedPerson.Room+$ {0:N0}���� 5`      $��
Bed Number��6   $��5, 10q�6-   �� 5a      $��23��6   $
 Wrap=�6&   $	��Top=�6:   $��25��6R   $��10q�6]   $��Center=�6i   $��Bottom=�5b      ��6<   �� *SelectedPerson.Bed+$ {0:N0}��5c      � 5d      $ 
Horizontal=�6   $
��0, 5q�61   .+�5e      �� $��Visit #��6   $��5, 10q�6*   �� 5f      $��23��6   $	��Top=�6S   $��25��6k   $��10q�6v   $��Bottom=�5g      $��Right=�6<   ��5f   &   �� *SelectedPerson.Visit_Number+5g   <   5h      5i      �� 5l   
   $��2��6   $��0��6%   $��0, 20, 0, 0q�62   .+�5m      �� $
��Left=�6   $��10q�6/   $	��Top=�6;   $	��228��6S   $��24��6_   .��5n      �� $��	Underline{�6   $!��Guest Discharge Information��68   $
��Bold"�6[   $��MS Reference Sans Serif)�6n   5o      � 5p      $ Vertical=�6   $��0q�6/   .+�5q      �� $��Discharge Date��6   $��10, 0, 0, 0q�61     5r      $
��Left=�6   $��10q�68   $	��Top=�6E   $	��228��6]   {�.  $
��Bold"�5s   �    6   �� *SelectedPerson.Discharge+$ {0:MM/dd/yyyy}��6�   5t      � 5u      $ Vertical=�6   $��0q�6/   .+�5v      �� $��Reason��6   $��10, 0, 0, 0q�6*   �� 5w      $
��Left=�6   $��44��65   $��10q�6A   $
 Wrap=�6N   $	��Top=�6b   $	��228��6z   $ Visible=�5y      ��5x      �� *SelectedPerson.Out_Reason+5y      5z      � 5{      $ 
Horizontal=�6   $��0q�61   .+�5|      �� $	��Top=�6   $��10q�63   $��26��6?   $��Deceased��6y    d� 	IsChecked 6K   �� *SelectedPerson.Deceased+6y   �� 5}      $��Center=�6   $��10q�66   $��25��6B   $��Return��6z    6N   �� *SelectedPerson.Return+6z   5~      � 5      $ 
Horizontal=�6   $��0q�61   .+�5�      �� $��	Stay Days��6   $��5, 10q�6,   �� 5�      $��Center=�6   $��23��6?   $��10q�6K   $	��Top=�6W   $��39��6o   $��Bottom=�5�      ��5�      �� *SelectedPerson.Bed_Days+$ {0:N0}��5�      5�      5�      5�      5�      