   M S B A M L   `   `   `  ����B  >ModuleA, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ModuleA.ViewsModuleA.Views  5      7 clr-namespace:ModuleA.ViewModelsModuleA.ViewModels  5      &     ModuleA.Views.SaveMasterListView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:ModuleA.Views     5      0vms clr-namespace:ModuleA.ViewModels     5      P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . .��5      � .+�5   
   �� -   5         ��Name$ _listOfPeople��5      $	��Top=�5      $
��Left=�6+   
����h{�$	��400��5   1   $��0��6>   ��5   *   �� *People+.  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ SelectionChanged��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      -  'Prism.Interactivity.InvokeCommandAction     Command 60   �� *PersonSelectedCommand+   CommandParameter 6Z   �� *SelectedItem+ �� ElementName$ _listOfPeople��5       �� 
GroupStyle 5      (  "System.Windows.Controls.GroupStyle  5      	   ContainerStyle	 5      �� 5      
 �� 
TargetType"
 ��6    .�5      ��  �� Property � �� �� Value 5   "   �� 5   &   .R�5   *   9�  9� 
IsExpanded . ��5   .   �� 5   2    �� Orientation$ 
Horizontal=�6=   .+�5    6   �� $
��Bold"�6q   
���<��$��16(�5!   D   $��Bottom=�6R   $
��Left=�6m   ��5    @   ��  �� Path$
 Name� �� StringFormat$ {0:D}��5!   m   �� 5"   6   $��16(�6`   
��� � �$
��Bold"�6�   $��Italic$�5#   D   $��10,0,0,0q�6W   $��Bottom=�6i   $
��Left=�6�   ��5"   @   �� $ 	ItemCount�5#   �   �� 5$   6   $��	 Guest(s)��6@   $��16(�6Q   
����  �$��Italic$�6s   $
��Left=�5%   D   $��Bottom=�6_   5&   3   .��5(   .   �� 5)   +   5*   '   5,      5-      5/       �� View 51      �� 52      P�53      �� 54      $��Roster��6)    �� DisplayMemberBinding 69   �� *Roster+ �� Mode$ OneWay=��� 55      $
��Name��6)    67   �� *
Guest_Name+$ OneWay=��� 56      $��Guest Id��6)    �� Width$
 Auto��6;    �� CellTemplate 57      �� 58   "   .R�59   &   ��    tbstyle#��[  5:   ,    �� TextAlignment$ Right=�6M   ��59   0   �� *
Guest_ID+$ OneWay=�$ {0:N0}��5:   M   5;   #   5=      �� 5>      $��Visit Id��6)   $
 Auto��6;    5?      �� 5@   "   .R�5A   &   �� #��[  5B   ,   $ Right=�6M   ��5A   0   �� *
Visit_ID+$ OneWay=�$ {0:N0}��5B   M   5C   #   5E      �� 5F      $��Visit #��6)   $
 Auto��6:    5G      �� 5H   "   .R�5I   &   ��   parkroadstyle#��[ 5J   ,   $ Right=�6S   ��5I   0   �� *Visit_Number+$ OneWay=�$ {0:N0}��5J   S   5K   #   5M      5O      5Q      5R      5S      