   M S B A M L   `   `   `  ���� B  >ModuleA, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ModuleA.ViewsModuleA.Views  7 clr-namespace:ModuleA.ViewModelsModuleA.ViewModels  &     ModuleA.Views.SaveMasterListView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:ModuleA.Views     0vms clr-namespace:ModuleA.ViewModels     P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . .��� .+��� -    ��Name$ _listOfPeople��$	��Top=�$
��Left=�
����h{�$	��400��$��0������ *People+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. -  'Prism.Interactivity.InvokeCommandAction     Command �� *PersonSelectedCommand+   CommandParameter �� *SelectedItem+ �� ElementName$ _listOfPeople�� �� 
GroupStyle (  "System.Windows.Controls.GroupStyle  	   ContainerStyle	 �� 
 �� 
TargetType"
 ��.���  �� Property � �� �� Value �� .R�9�  9� 
IsExpanded . ����  �� Orientation$ 
Horizontal=�.+��� $
��Bold"�
���<��$��16(�$��Bottom=�$
��Left=�����  �� Path$
 Name� �� StringFormat$ {0:D}���� $��16(�
��� � �$
��Bold"�$��Italic$�$��10,0,0,0q�$��Bottom=�$
��Left=����� $ 	ItemCount��� $��	 Guest(s)��$��16(�
����  �$��Italic$�$
��Left=�$��Bottom=�.����  �� View �� P��� $��Roster�� �� DisplayMemberBinding �� *Roster+ �� Mode$ OneWay=��� $
��Name�� �� *
Guest_Name+$ OneWay=��� $��Guest Id�� �� Width$
 Auto�� �� CellTemplate �� .R���    tbstyle#��[   �� TextAlignment$ Right=����� *
Guest_ID+$ OneWay=�$ {0:N0}���� $��Visit Id��$
 Auto�� �� .R��� #��[  $ Right=����� *
Visit_ID+$ OneWay=�$ {0:N0}���� $��Visit #��$
 Auto�� �� .R���   parkroadstyle#��[ $ Right=����� *Visit_Number+$ OneWay=�$ {0:N0}��