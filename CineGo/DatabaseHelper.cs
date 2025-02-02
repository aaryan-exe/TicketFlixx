using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CineGo
{
    public static class DatabaseHelper
    {
        private static readonly string ConnectionString = "Data Source=(localdb)\\CineGo;Initial Catalog=CineGo;Integrated Security=True";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConnectionString);
        }
    }
}