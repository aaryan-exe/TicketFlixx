using System;
using System.Data.SqlClient;

namespace CineGo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add logic here that needs to run when the page loads
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Connection string
            string ConnectionString = "Data Source=(localdb)\\CineGo;Initial Catalog=CineGo;Integrated Security=True";

            // Example variables (ensure these TextBoxes exist in your form)
            string username = usernameTextBox.Text;
            string password = paswoordTextBox.Text; // Assuming this is a typo for 'passwordTextBox'

            try
            {
                // Establish and open a connection
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();

                    // Prepare the query with parameters to avoid SQL injection
                    string query = "INSERT INTO userInfo(userName, userPassword) VALUES (@UserName, @UserPassword)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Add parameters
                        cmd.Parameters.AddWithValue("@UserName", username);
                        cmd.Parameters.AddWithValue("@UserPassword", password);

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Success message
                OutputLabel.Text = "User registered successfully!";
            }
            catch (Exception ex)
            {
                // Display error message
                OutputLabel.Text = "Error: " + ex.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}
