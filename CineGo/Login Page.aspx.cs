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
            // Connection string
            string ConnectionString = "Data Source=(localdb)\\CineGo;Initial Catalog=CineGo;Integrated Security=True";

            // Retrieve input from textboxes
            string email = emailTextBox.Text.Trim(); // Corrected the typo
            string password = passwordTextBox.Text.Trim(); // Corrected the typo

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                OutputLabel.Text = "Please enter both Email and password.";
                return;
            }

            try
            {
                // Establish and open a connection
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();

                    // Query to check if the username and password match
                    string query = "SELECT COUNT(*) FROM userInfo WHERE email = email AND userPassword = @UserPassword";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.Add(new SqlParameter("@email", email));
                        cmd.Parameters.Add(new SqlParameter("@UserPassword", password));

                        // Execute the query and get the result
                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            // Success: User exists
                            OutputLabel.Text = "Login successful!";
                        }
                        else
                        {
                            // Failure: Invalid credentials
                            OutputLabel.Text = "*Invalid username or password.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions gracefully
                OutputLabel.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}
