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
                    string checkQuery = "SELECT COUNT(*) FROM userInfo WHERE email = @email OR Mobile = @mobile";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue("@Email", email);
                        checkCmd.Parameters.AddWithValue("@Mobile", mobile);

                        int count = (int)checkCmd.ExecuteScalar();

                        if (count > 0)
                        {
                            OutputLabel.Text = "*Username or mobile number already exists.";
                            return;
                        }
                    }

                    // Prepare the query for inserting a new user
                    string query1 = "INSERT INTO userInfo(FName, Email, Mobile, Password) VALUES (@name, @email, @mobile, @password)";

                    using (SqlCommand cmd = new SqlCommand(query1, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Mobile", mobile);
                        cmd.Parameters.AddWithValue("@Password", password);

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Success message
                Response.Redirect("\\HomePage\\HomePage.aspx");
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
