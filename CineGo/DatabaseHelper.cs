using System;
using System.Data.SqlClient;

namespace CineGo
{
    public static class DatabaseHelper
    {
        // Azure SQL Database connection string
        private static readonly string ConnectionString =
            "Server=tcp:cinego-sql.database.windows.net,1433;" +
            "Initial Catalog=CinegoDatabase;" +
            "Persist Security Info=False;" +
            "User ID=Aryan;" + 
            "Password=Cinego@01;" + 
            "MultipleActiveResultSets=False;" +
            "Encrypt=True;" +
            "TrustServerCertificate=False;" +
            "Connection Timeout=30;";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConnectionString);
        }
    }
}