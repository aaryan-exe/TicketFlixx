using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CineGo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch the movie name from the query string (if passed from previous page)
                string movieTitle = Request.QueryString["movie"];
                lblMovieTitle.Text = string.IsNullOrEmpty(movieTitle) ? "Movie details not available" : "Paying for: " + movieTitle;
            }
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            // Simulate payment processing
            Response.Write("<script>alert('🎉 Payment Successful! Enjoy your movie!');</script>");
        }
    }
}
