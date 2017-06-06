using ModuleA.DataModels;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Data;

namespace ModuleA.ViewModels
{
    public class GuestMasterViewModel : BindableBase
    {
        #region Bindable and other variables and constants

        public string guests_count { get; private set; }
        public string c_guests_count { get; private set; }
        public string d_guests_count { get; private set; }
        public string visits_count { get; private set; }
        public string singles_count { get; private set; }
        public string multis_count { get; private set; }
        public string nretrn_count { get; private set; }
        public string decesd_count { get; private set; }
        public string parkrd_count { get; private set; }
        public CollectionView collection { get; private set; }

        private ObservableCollection<DisplayGuests> _people;

        public ObservableCollection<DisplayGuests> People
        {
            get { return _people; }
            set { SetProperty ( ref _people, value ); }
        }

        private IRegionManager _regionManager;
        public DelegateCommand<DisplayGuests> PersonSelectedCommand { get; private set; }
        public DelegateCommand<DisplayGuests> NoShowsCommand { get; private set; }
        public DelegateCommand NoReturnsCommand { get; private set; }
        public DelegateCommand ExitCommand { get; private set; }

        public string directorypath = @"c:\Users\Dave", filePath = string.Empty, startfrom = string.Empty;
        public int cannot_return = 0, deceased = 0, single_visits = 0, multi_visits = 0, prguests = 0,
                   curr_guests = 0, disc_guests = 0;
        public DateTime prcutoff = new DateTime ( 2011, 06, 05 );

        #endregion Bindable and other variables and constants

        #region Constructor

        public GuestMasterViewModel ( RegionManager regionManager )
        {
            _regionManager = regionManager;

            PersonSelectedCommand = new DelegateCommand<DisplayGuests> ( PersonSelected );
            ExitCommand = new DelegateCommand ( Quit_the_App );
            NoShowsCommand = new DelegateCommand<DisplayGuests> ( NoShowsReport );
            CreatePeople ( );
        }

        #endregion Constructor

        #region Command Processing

        public void Quit_the_App ( )
        {
            Application.Current.MainWindow.Close ( );
        }

        private void PersonSelected ( DisplayGuests person )
        {
            var parameters = new NavigationParameters ( );
            parameters.Add ( "person", person );

            if (person != null)
                _regionManager.RequestNavigate ( "GuestDetailsRegion", "GuestDetailView", parameters );
        }
        private void NoShowsReport (DisplayGuests persons )
        {
            var parameters = new NavigationParameters ( );
            parameters.Add ( "NoShows", People[0] );
            _regionManager.RequestNavigate ( "GuestDetailsRegion", "NoShowsView", parameters );
        }

        #endregion Command Processing

        #region Load the DataContext for the view

        private void CreatePeople ( )
        {
            GetDisplayGuests gdg = new GetDisplayGuests ( );

            List<DisplayGuests> d_Guests = new List<DisplayGuests> ( );
            d_Guests = gdg.GetAllGuests ( );

            DateTime to_Date = DateTime.Today;
            var db = new SamHouseGuestsEntities ( );
            guests_count = $"{db.Guests.Count ( ),10:N0} Total Guest Records";
            visits_count = $"{db.Visits.Count ( ),10:N0} Total Visit Records";
            prguests = db.Visits.Count ( v => v.Discharged <= prcutoff );
            curr_guests = db.Guests.Count ( g => g.Roster.Equals ( "C" ) );
            disc_guests = db.Guests.Count ( g => g.Roster.Equals ( "D" ) );
            c_guests_count = ( curr_guests > 9 ) ? $"{curr_guests,12:N0} Current Guests" : $"{curr_guests,13:N0} Current Guests";
            //*c_guests_count = $"{db.Guests.Count ( g => g.Roster == "C" ),12:N0} Current Guests";
            d_guests_count = $"{db.Guests.Count ( g => g.Roster == "D" ),10:N0} Discharged Guests";
            cannot_return = db.Visits.Count ( v => !v.CanReturn && !v.Deceased && !v.DischargeReason.Contains ( "No Show" ) );
            deceased = db.Visits.Count ( v => v.Deceased );
            single_visits = db.Visits.Count ( v => v.VisitNumber == 1 );
            multi_visits = db.Visits.Count ( v => v.VisitNumber > 1 );
            multis_count = $"{multi_visits,11:N0} Multiple Visit(Guest) Records";
            singles_count = $"{single_visits,10:N0} Single Visit Records";
            nretrn_count = $"{cannot_return,11:N0} Former Guests Ineligible for Return";
            decesd_count = $"{deceased,12:N0} Guests Reported as Deceased";
            parkrd_count = $"{prguests,11:N0} Park Road Visits (prior to {prcutoff.ToString ( "MM/dd/yyyy" )})";
            _people = new ObservableCollection<DisplayGuests> ( d_Guests );
            People = _people;
       }
        #endregion Load the DataContext for the view
    }
}