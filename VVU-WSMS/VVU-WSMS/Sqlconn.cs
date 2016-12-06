using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace VVU_WSMS
{
    public class Sqlconn
    {
        public string ConnectionStr()
        {
            string connstr= "Data Source=.\\Windows;Initial Catalog=WorkStudy;Integrated Security=True";
            return connstr;
        }
    }
}