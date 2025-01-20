using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Connection string
            string ConnectionString = "Data Source=(localdb)\\CineGo;Initial Catalog=CineGo;Integrated Security=True";

            string name = NameTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            string mobile = MobileTextBox.Text.Trim();

            // Input validation
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) ||
               string.IsNullOrEmpty(password) || string.IsNullOrEmpty(mobile))
            {
                OutputLabel.Text = "*All fields are required.";
                return;
            }

            //if (!System.Text.RegularExpressions.Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$"))
            //{
            //    OutputLabel.Text = "Invalid email format.";
            //    return;
            //}

            try
            {
                // Establish and open a connection
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();

                    // Check if the username or mobile already exists
                    string checkQuery = "SELECT COUNT(*) FROM userInfo WHERE email = @email OR mobileNumber = @mobile";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.Add(new SqlParameter("@email", email));
                        checkCmd.Parameters.Add(new SqlParameter("@mobile", mobile));

                        int count = (int)checkCmd.ExecuteScalar();

                        if (count > 0)
                        {
                            OutputLabel.Text = "*Username or mobile number already exists.";
                            return;
                        }
                    }

                    // Prepare the query for inserting a new user
                    string query1 = "INSERT INTO userInfo(FName, email, mobileNumber, userPassword) VALUES (@name, @email, @mobile, @password)";

                    using (SqlCommand cmd = new SqlCommand(query1, con))
                    {
                        // Add parameters
                        cmd.Parameters.Add(new SqlParameter("@name", name));
                        cmd.Parameters.Add(new SqlParameter("@email", email));
                        cmd.Parameters.Add(new SqlParameter("@mobile", mobile));
                        cmd.Parameters.Add(new SqlParameter("@password", password));

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Success message
                OutputLabel.Text = "User registered successfully!";
            }
            catch (SqlException sqlEx)
            {
                // Handle SQL-related exceptions
                OutputLabel.Text = "Database error occurred: " + sqlEx.Message;
            }
            catch (Exception ex)
            {
                // Handle other exceptions
                OutputLabel.Text = "An error occurred: " + ex.Message;
            }
        }


    }
}
