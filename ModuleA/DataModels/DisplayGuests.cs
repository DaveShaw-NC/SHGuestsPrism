using System;
using System.Collections.Generic;
using System.Linq;

namespace ModuleA.DataModels

{
    #region DataGridView Display Class

    public class DisplayGuests
    {
        public string Roster { get; set; }
        public int Guest_ID { get; set; }
        public string Guest_Name { get; set; }
        public string SSN { get; set; }
        public bool Deceased { get; set; }
        public bool Return { get; set; }
        public int Visit_ID { get; set; }
        public int Visit_Number { get; set; }
        public DateTime BirthDate { get; set; }
        public DateTime Admit { get; set; }
        public DateTime Discharge { get; set; }
        public int Bed_Days { get; set; }
        public string In_Reason { get; set; }
        public string Out_Reason { get; set; }
        public string AgencyWorker { get; set; }
        public Nullable<int> Room { get; set; }
        public Nullable<int> Bed { get; set; }
        public string Gender { get; set; }
    }

    #endregion DataGridView Display Class

    #region Retrieve all Guest Records

    public class GetDisplayGuests
    {
        public static char[] _defaulttrim = new char[] { ' ', '\t', '\r', '\n' };
        public DateTime prcutoff = new DateTime ( 2011, 06, 05 ), to_Date = DateTime.Today;

        public List<DisplayGuests> GetAllGuests ( )
        {
            List<DisplayGuests> tmp_list = new List<DisplayGuests> ( );
            using (var db = new SamHouseGuestsEntities ( ))
            {
                tmp_list = ( from g in db.Guests.AsEnumerable ( )
                             join v in db.Visits.AsEnumerable ( )
                             on g.GuestID equals v.GuestID
                             where v.AdmitDate >= prcutoff
                             orderby v.Roster, g.LastName, g.FirstName
                             select new DisplayGuests
                             {
                                 Roster = ( v.Roster == "D" ) ? "Discharged" : "Current",
                                 Guest_ID = g.GuestID,
                                 Guest_Name = string.Concat ( g.LastName, ", ", g.FirstName ),
                                 SSN = string.Concat ( "XX-XX-", g.SSN.ToString ( "000000000" ).Substring ( 5, 4 ) ),
                                 BirthDate = g.BirthDate,
                                 Deceased = v.Deceased,
                                 Return = v.CanReturn,
                                 Visit_ID = v.VisitID,
                                 Visit_Number = v.VisitNumber,
                                 Admit = v.AdmitDate,
                                 Discharge = ( v.Roster == "D" ) ? v.Discharged : DateTime.MaxValue,
                                 Bed_Days = ( v.Roster == "D" ) ? v.VisitDays : ( to_Date.AddDays ( 1 ) - v.AdmitDate ).Days,
                                 In_Reason = v.AdmitReason.TrimEnd ( _defaulttrim ),
                                 Out_Reason = ( v.Roster == "D" ) ? v.DischargeReason.TrimEnd ( _defaulttrim ) : "Still a guest",
                                 AgencyWorker = string.Concat ( v.Agency, " (", v.Worker, ")" ),
                                 Room = !( v.Room == null ) ? v.Room : 0,
                                 Bed = !( v.Bed == null ) ? v.Bed : 0,
                                 Gender = g.Gender
                             }
                            ).ToList ( );
            }
            return tmp_list;
        }
    }

    #endregion Retrieve all Guest Records
}