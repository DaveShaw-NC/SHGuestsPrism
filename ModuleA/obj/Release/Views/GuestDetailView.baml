   M S B A M L   `   `   `  ���� B  >ModuleA, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ModuleA.ViewsModuleA.Views  #    ModuleA.Views.GuestDetailView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:ModuleA.Views     P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . .��� -    �Name$ 
LayoutRoot����
�  
� Center$ 466.8,235.2&� 
� GradientOrigin$ 466.8,235.2&� � MappingMode$ Absolute=� 
� RadiusY$ 235.2Q� 
� RadiusX$ 466.8Q�.���  � Color$ 	#FF80B3D4��� $ 	#FF456AB4�� � Offset$ 1Q�	 � ColumnDefinitions	 �� $	��33* ��� $	��33* ��� $	��33* �
 � RowDefinitions
 �� $
��Auto ��� .+��� $	��Top=�$��Center=�$��2q�$��0��$��0��$��3��.���� $��	Underline{�$
��Bold"�$��MS Reference Sans Serif)�
�������$��16(�$��Italic$����� *label_content+�� $��0��$��0��$��0, 20, 0, 0q�.+��� $
��Left=�$��10q�$	��Top=�$	��228��$��24��.���� $��	Underline{�$ ��Guest Personal Information��$
��Bold"�$��MS Reference Sans Serif)��  � Orientation$ Vertical=�$��0q�.+��� $��
Birth Date��$��10, 0, 0, 0q�(  "System.Windows.Controls.DatePicker  $
��Left=�$��10q�$	��Top=�$	��192��{�.  $
��Bold"�   SelectedDate �� *SelectedPerson.BirthDate+� $ Vertical=�$��0q�.+��� $
��Name��$��10, 0, 0, 0q��� $
��Left=�$��29��$��10q�$	��Top=�$	��192��$��14(�$��Bottom=����� *SelectedPerson.Guest_Name+� $ 
Horizontal=�$��0q�.+��� $��SSN/W7��$��10, 0, 0, 0q�$��Center=��� $
��Left=�$��10q�$	��Top=�$��23��$	��120�� �� 
IsReadOnly . $
��Bold"�$��Bottom=����� *SelectedPerson.SSN+� $ 
Horizontal=�$��0q�.+��� $��Gender��$��10, 0, 0, 0q�$��Center=��� $
��Left=�$��23��$��10q�$��40��$��Bottom=�$��Center=�$	��Top=����� *SelectedPerson.Gender+� $ 
Horizontal=�$��0q�.+��� $��Guest ID��$��10, 0, 0, 0q�$��Center=�$��Italic$�$
��Bold"�$��Right=��� $��Right=�$��Bottom=�$��23��$��10q�$��12(�$	��Top=�$��40�� . ���� *SelectedPerson.Guest_ID+ �� StringFormat$ {0:D}���� $��Visit ID��$��
5, 0, 0, 0q�$��Center=�$��Italic$�$
��Bold"�$��Right=��� $��Right=�$��23��$��10q�$��Bottom=�$��12(�$	��Top=�$��40�� . ���� *SelectedPerson.Visit_ID+$ {0:D}���� $��1��$��0��$��0, 20, 0, 0q�.+��� $
��Left=�$��10q�$	��Top=�$	��228��.���� $��	Underline{�$!��Guest Admission Information��$
��Bold"�$��MS Reference Sans Serif)�� $ Vertical=�$��0q�.+��� $��
Admit Date��$��10, 0, 0, 0q�  -     Name$ admitdate_DatePicker��$
��Left=�$��10q�$	��Top=�$	��228��{�.  $
��Bold"� �� *SelectedPerson.Admit+$ {0:MM/dd/yyyy}��� $ Vertical=�$��0q�.+��� $��Reason��$��10, 0, 0, 0q��� $
��Left=�$��44��$��10, 10, 15, 15q� �� TextWrapping$
 Wrap=�$	��Top=�$	��228��" �� VerticalScrollBarVisibility$ Visible=����� *SelectedPerson.In_Reason+� $ Vertical=�$��0q�.+��� $��Agency (Worker)��$��10, 0, 0, 0q��� $
��Left=�$��44��$��10q�$
 Wrap=�$	��Top=�$	��228��$ Visible=����� *SelectedPerson.AgencyWorker+� $ 
Horizontal=�$��0, 15q�.+��� $��Room Number��$��5, 10q��� $��23��$	��Top=�$��25��$��10q�$��Center=�$��Bottom=����� *SelectedPerson.Room+$ {0:N0}���� $��
Bed Number��$��5, 10q��� $��23��$
 Wrap=�$	��Top=�$��25��$��10q�$��Center=�$��Bottom=����� *SelectedPerson.Bed+$ {0:N0}��� $ 
Horizontal=�$
��0, 5q�.+��� $��Visit #��$��5, 10q��� $��23��$	��Top=�$��25��$��10q�$��Bottom=�$��Right=����� *SelectedPerson.Visit_Number+�� $��2��$��0��$��0, 20, 0, 0q�.+��� $
��Left=�$��10q�$	��Top=�$	��228��$��24��.���� $��	Underline{�$!��Guest Discharge Information��$
��Bold"�$��MS Reference Sans Serif)�� $ Vertical=�$��0q�.+��� $��Discharge Date��$��10, 0, 0, 0q�  $
��Left=�$��10q�$	��Top=�$	��228��{�.  $
��Bold"� �� *SelectedPerson.Discharge+$ {0:MM/dd/yyyy}��� $ Vertical=�$��0q�.+��� $��Reason��$��10, 0, 0, 0q��� $
��Left=�$��44��$��10q�$
 Wrap=�$	��Top=�$	��228��$ Visible=����� *SelectedPerson.Out_Reason+� $ 
Horizontal=�$��0q�.+��� $	��Top=�$��10q�$��26��$��Deceased�� d� 	IsChecked �� *SelectedPerson.Deceased+�� $��Center=�$��10q�$��25��$��Return�� �� *SelectedPerson.Return+� $ 
Horizontal=�$��0q�.+��� $��	Stay Days��$��5, 10q��� $��Center=�$��23��$��10q�$	��Top=�$��39��$��Bottom=����� *SelectedPerson.Bed_Days+$ {0:N0}��