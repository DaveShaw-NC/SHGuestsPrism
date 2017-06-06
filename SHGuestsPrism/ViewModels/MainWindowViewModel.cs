using Prism.Mvvm;
using System;

namespace SHGuestsPrism.ViewModels
{
    public class MainWindowViewModel : BindableBase
    {
        private string _title = $"Complete Guest Listing Alphabetically by Roster as of {DateTime.Today.ToLongDateString ( )}";

        public string Title
        {
            get { return _title; }
            set { SetProperty ( ref _title, value ); }
        }

        public MainWindowViewModel ( )
        {

        }
    }
}
