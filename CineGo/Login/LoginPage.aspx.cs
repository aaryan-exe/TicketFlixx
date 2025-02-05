using System;
using System.Data.SqlClient;

namespace CineGo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Logic to run on page load (if any)
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve input from textboxes
            string email = emailTextBox.Text.Trim();
            string password = passwordTextBox.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                OutputLabel.Text = "Please enter both Email and Password.";
                return;
            }

            try
            {
                // Use shared connection
                using (SqlConnection con = DatabaseHelper.GetConnection())
                {
                    con.Open();

                    // Corrected SQL query
                    string query = "SELECT COUNT(*) FROM userInfo WHERE email = @Email AND password = @Password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        // Execute the query
                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            OutputLabel.Text = "Login successful!";
                            Response.Redirect("/HomePage/HomePage.aspx");
                        }
                        else
                        {
                            OutputLabel.Text = "*Invalid username or password.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                OutputLabel.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}
