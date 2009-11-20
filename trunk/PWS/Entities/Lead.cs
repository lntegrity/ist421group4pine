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
