using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using CineGo.SeatBooking;

namespace CineGo.HomePage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("\\SignUp\\SignUpPage.aspx");
            }
        }

       

        public class Movie
        {

        }

        protected void btnInterstellar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Trailer/InterstellarTrailer.aspx");
        }


        protected void Batmanbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Trailer/Batman.aspx");
        }
    }
}