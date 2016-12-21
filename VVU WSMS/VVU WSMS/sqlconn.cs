using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VVU_WSMS
{
   class sqlconn
    {
        public string ConnectionStr()
        {
            string connstr = "Data Source=.\\windows;Initial Catalog=WSMS;Integrated Security=True";
            return connstr;
        }
    }
}