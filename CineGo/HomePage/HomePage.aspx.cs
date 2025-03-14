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
            Session["Price"]=null;
            Session["SeatsBooked"] = null;
        }

       

        public class Movie
        {

        }

        protected void btnInterstellar_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                string script = "alert('User ID is missing! Please log in again.'); window.location='/Login/LoginPage.aspx';";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                return;
            }
            else
            {
                Session["MovieName"] = "Interstellar";
                Response.Redirect("/Trailer/InterstellarTrailer.aspx");
            }


        }



        protected void Avatarbtn_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                string script = "alert('User ID is missing! Please log in again.'); window.location='/Login/LoginPage.aspx';";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                return;
            }
            else
            {
                Session["MovieName"] = "Avatar";
                Response.Redirect("/Trailer/AvatarTrailer.aspx");
            }
          
            
        }

        protected void BatmanTrailer_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                string script = "alert('User ID is missing! Please log in again.'); window.location='/Login/LoginPage.aspx';";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                return; 
            }
            else
            {
                Session["MovieName"] = "Batman: Dark Knight";
                Response.Redirect("/Trailer/BatmanTrailer.aspx");
            }

            
        }
    }
}