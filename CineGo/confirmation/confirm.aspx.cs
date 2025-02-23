using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo.confirmation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch movie name from query string (sent from Payment page)
                string movieTitle = Request.QueryString["movie"];
                lblMovieTitle.Text = ""+Session["moviename"];
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            // Redirect back to the homepage
            Response.Redirect("HomePage/HomePage.aspx");
        }
    }
}