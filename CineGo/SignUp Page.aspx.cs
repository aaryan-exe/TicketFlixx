using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace CineGo
{
    public partial class WebForm2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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

            try
            {
                using (SqlConnection con = DatabaseHelper.GetConnection()) // Use shared connection
                {
                    con.Open();

                    // Check if the username or mobile already exists
                    string checkQuery = "SELECT COUNT(*) FROM userInfo WHERE email = @email OR mobileNumber = @mobile";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue("@email", email);
                        checkCmd.Parameters.AddWithValue("@mobile", mobile);

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
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@mobile", mobile);
                        cmd.Parameters.AddWithValue("@password", password);

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Success message
                Response.Redirect("Home Page/HomePage.aspx");
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
