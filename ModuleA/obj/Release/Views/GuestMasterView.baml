   M S B A M L   `   `   `  ���� B  >ModuleA, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ModuleA.ViewsModuleA.Views  7 clr-namespace:ModuleA.ViewModelsModuleA.ViewModels  #    ModuleA.Views.GuestMasterView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -localclr-namespace:ModuleA.Views     0vms clr-namespace:ModuleA.ViewModels     P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . .��� -    �Name$ 
LayoutRoot��
�������$��10q� � 	Resources  �� 
TargetType   ccstyle �� Property �� Value  dgcstyle*  $System.Windows.Controls.DataGridCell  dgccentered �� BasedOn  dgcright  
dgcreasons  tbstyle  parkroadstyle��%?  &	        '�� %     &	 r     &	 �     7  &	 3    7  &	 �    7  &	     &	 �    7  �� " ��.���  � ��
 ������� " ��.���  � �� �� *'%DataContext.SelectedPerson.Guest_Name+�� "  .���  � ��$
 Left=���  � ��
 �   ���  � ��$ Medium"��� 8   "  .���  �@��TextAlignment$ Center=���  � ��
 �   ���  � ��$
 Bold"��� 8   "  .���  �@��TextAlignment$ Right=���  � ��
 �  ����  � ��$
 Bold"��� 8   "  .���  �@��TextAlignment$
 Left=���  � ��$ 10(���  � ��
 ��  ���  � ��$ SemiBold"��� " ��.���  � ��$ MS Serif)���  � ��$
 Bold"���  �@��TextAlignment$
 Left=���  � ��$ 12(��� " ��8   .���  � ��$ Italic$���  � ��
 �<�� � RowDefinitions �� $��30 ��� $	��300 ��� $��* � � ColumnDefinitions �� $	��300 ��� $��5 ��� $��* �.+�&   System.Windows.Controls.DataGrid  -   	  Name$	 _gridOfPeople��
   RowDetailsVisibilityMode$
 VisibleWhenSelected=�$��0, 10, 0, 0q�$��1��   SelectionMode$ Single=�$	��Top=� �� AlternationCount$ 2��   AlternatingRowBackground
 ��ح�$��12(�   EnableRowVirtualization .    AutoGenerateColumns .  $	��400��$
��Auto������ *People+.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. -  'Prism.Interactivity.InvokeCommandAction     Command �� *PersonSelectedCommand+   CommandParameter �� *SelectedItem+ �� ElementName$ _gridOfPeople��   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,	  &System.Windows.Controls.DataGridColumn 	  Header$ Roster��1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding �� *Roster+ 
  ElementStyle �� .���  �@��TextAlignment$ Justify=���  � ��
 ���F���  � ��$
 Bold"�   	  Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 $ 
Guest Name�� 	  	CellStyle# [  �� *
Guest_Name+  $ Visit#��# [  �� *Visit_Number+ �� StringFormat$ {0:N0}����  �� Orientation$ Vertical=�$��0��$��2��$
��Left=�$��Bottom=�$��10, 0, 20, 0q�.+��� #��[ ���� *c_guests_count+�� #��[ ���� *d_guests_count+�� #��[ 
����  ����� *guests_count+�� #��[ ���� *multis_count+�� #��[ 
����  ����� *visits_count+�� #��[ ���� *parkrd_count+�� #��[ 
���  ������ *nretrn_count+�� #��[ 
��� � ����� *decesd_count+�� 
����  �$��3��$��1��$��1��$��3��$
��Left=�$��Stretch=� �� ShowsPreview . �� $��2��$��10, 0, 0, 0q�$��1��$��2��!  Prism.Regions.RegionManager   
RegionName$ GuestDetailsRegion��$
��Auto��$
��Auto��#��[  $	��Top=�]� $��Bottom=�$	��134��$��2��$��2��.+��� $C��=D:\WPF Testing\SHGuestsPrism\ModuleA\samaritan_house_logo.jpg��$��Bottom=�$	��150��$��74��$��Uniform=�$
��Left=�$
��Left=�$��
25,0,0,9.8q�  J� RenderTransformOrigin$  0.585,0.178&��� $��40��$��60��$
��Quit��$��Bottom=�$��Right=�$��Center=�
���  ��$��14(�$
��Bold"�$��10q�   $ Click��.    �� *ExitCommand+! J� Effect! 3  -System.Windows.Media.Effects.DropShadowEffect  