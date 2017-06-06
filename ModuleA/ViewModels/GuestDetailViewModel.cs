using ModuleA.DataModels;
using Prism.Mvvm;
using Prism.Regions;

namespace ModuleA.ViewModels
{
    public class GuestDetailViewModel : BindableBase, INavigationAware
    {
        #region Bindable constants and variables

        private DisplayGuests _selectedPerson;

        public DisplayGuests SelectedPerson
        {
            get { return _selectedPerson; }
            set { SetProperty ( ref _selectedPerson, value ); }
        }

        private string _label;

        public string label_content
        {
            get { return _label; }
            set { SetProperty ( ref _label, value ); }
        }

        #endregion Bindable constants and variables

        #region Constructor

        public GuestDetailViewModel ( )
        {
            label_content = _label;
        }

        #endregion Constructor

        #region Navigation Implementation

        public void OnNavigatedTo ( NavigationContext navigationContext )
        {
            char[] delimiter = new char[] { ',', ' ' };
            string[] Names = new string[3] { string.Empty, string.Empty, string.Empty };
            var person = navigationContext.Parameters["person"] as DisplayGuests;
            if (person != null)
            {
                SelectedPerson = person;
                Names = SelectedPerson.Guest_Name.Split ( delimiter, 3, System.StringSplitOptions.None );
                if (Names[2].Equals ( string.Empty ))
                {
                    label_content = $"Details for {Names[1]} {Names[0]}";
                }
                else
                {
                    label_content = $"Details for {Names[2]} {Names[0]} {Names[1]}";
                }
            }
        }

        public bool IsNavigationTarget ( NavigationContext navigationContext )
        {
            var person = navigationContext.Parameters["person"] as DisplayGuests;
            if (person != null)
                return SelectedPerson != null && SelectedPerson.Guest_ID == person.Guest_ID;
            else
                return true;
        }

        public void OnNavigatedFrom ( NavigationContext navigationContext )
        {
        }

        #endregion Navigation Implementation
    }
}