using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Ensure this runs only on initial page load, not on postbacks
            {
                if (Session["UserID"] != null)
                {
                    // User is logged in: show Log Out, hide Sign In
                    btnSignIn.Visible = false;
                    btnLogOut.Visible = true;
                }
                else
                {
                    // User is not logged in: show Sign In, hide Log Out
                    btnSignIn.Visible = true;
                    btnLogOut.Visible = false;
                }
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\SignUp\\SignUpPage.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to the home page (or login page)
            Session.Clear(); // Clears all session variables
            Session.Abandon(); // Ends the session
            Response.Redirect("\\Lander\\Lander.aspx"); // Redirect to home page or wherever you prefer
        }
    }
}