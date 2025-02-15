using System;
using System.Data.SqlClient;

namespace CineGo
{
    public static class DatabaseHelper
    {
        // Azure SQL Database connection string
        private static readonly string ConnectionString =
     @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aryan\source\repos\CineGo\CineGo\App_Data\Database1.mdf;Integrated Security=True";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConnectionString);
        }
    }
}