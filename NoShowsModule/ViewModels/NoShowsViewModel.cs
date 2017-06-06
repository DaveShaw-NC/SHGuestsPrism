using ModuleA.DataModels;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NoShowsModule.ViewModels
{
    public class NoShowsViewModel : BindableBase, INavigationAware
    {
        #region Bindable constants and variables

        private List<DisplayGuests> _selectedPerson;

        public List<DisplayGuests> SelectedPerson
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
        #region Navigation Implementation

        public void OnNavigatedTo ( NavigationContext navigationContext )
        {
            char[] delimiter = new char[] { ',', ' ' };
            string[] Names = new string[3] { string.Empty, string.Empty, string.Empty };
            label_content = "No Shows View When finished";
        }

        public bool IsNavigationTarget ( NavigationContext navigationContext )
        {
            var person = navigationContext.Parameters["NoShows"] as DisplayGuests;
            if (person != null)
                return SelectedPerson != null;
            else
                return true;
        }

        public void OnNavigatedFrom ( NavigationContext navigationContext )
        {
        }

        #endregion Navigation Implementation
    }
}
