using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace finalprojecteternal
{
    public class GlobalVariables
    {
        private static string username = "";
        public static string User
        {
            get { return username; }
            set {username = value;}
        }

        private static string password = "";
        public static string Pass
        {
            get { return password; }
            set { password = value; }
        }
    }
}