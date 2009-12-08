using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWS.Entities
{
    public class Lead
    {
        private int _ID;
        private string _Name;
        private string _Address;
        private string _City;
        private string _State;
        private string _Phone;
        private int _Zip;

        public int Zip
        {
            get { return _Zip; }
            set { _Zip = value; }
        }

        public string City
        {
            get { return _City; }
            set { _City = value; }
        }
        
        public string State
        {
            get { return _State; }
            set { _State = value; }
        }

        public string Phone
        {
            get { return _Phone; }
            set { _Phone = value; }
        }
        
        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }        

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }        

        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }
    }
}
