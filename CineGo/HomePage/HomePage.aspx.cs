using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CineGo.HomePage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMovies();
            }
        }

        private void LoadMovies()
        {
            var movies = new List<Movie>
            {
                new Movie { Title = "Avatar", ImageUrl = "https://www.themoviedb.org/t/p/original/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg", Rating = "7.8" },
                new Movie { Title = "Interstellar", ImageUrl = "https://www.themoviedb.org/t/p/original/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg", Rating = "8.6" },
                new Movie { Title = "Inception", ImageUrl = "https://www.themoviedb.org/t/p/original/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg", Rating = "8.8" },
                new Movie { Title = "The Dark Knight", ImageUrl = "https://www.themoviedb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg", Rating = "9.0" },
                new Movie { Title = "Titanic", ImageUrl = "https://www.themoviedb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", Rating = "7.9" },
                new Movie { Title = "Avengers: Endgame", ImageUrl = "https://www.themoviedb.org/t/p/original/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg", Rating = "8.4" },
                new Movie { Title = "Joker", ImageUrl = "https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg", Rating = "8.4" },
                new Movie { Title = "Spider-Man: No Way Home", ImageUrl = "https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg", Rating = "8.3" },
                new Movie { Title = "The Lion King", ImageUrl = "https://www.themoviedb.org/t/p/original/1TUg5pO1VZ4B0Q1amk3OlXvlpXV.jpg", Rating = "8.5" },
                new Movie { Title = "Frozen II", ImageUrl = "https://www.themoviedb.org/t/p/original/pjeMs3yqRmFL3giJy4PMXWZTTPa.jpg", Rating = "6.8" }
            };

            MovieRepeater.DataSource = movies;
            MovieRepeater.DataBind();
        }

        protected void BookNow_Click(object sender, EventArgs e)
        {
            var button = (System.Web.UI.WebControls.Button)sender;
            string selectedMovie = button.CommandArgument;
            Response.Redirect("Booking.aspx?movie=" + selectedMovie);
        }
    }

    public class Movie
    {
        public string Title { get; set; }
        public string ImageUrl { get; set; }
        public string Rating { get; set; }
    }
}