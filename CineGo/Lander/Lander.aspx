<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lander.aspx.cs" Inherits="CineGo.Lander.Lander" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CineGo</title>
    <link type="text/css" rel="stylesheet" href="Lander.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navigation">
    <div class="logo">CineGo</div>
    <div class="home-parent">
        <div class="home"><a href="/Lander/Lander.aspx">Home</a></div>
        <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
        <div class="movies"><a href="/AboutUs/About.aspx">About Us</a></div>
    </div>
    <div class="auth-buttons">
        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="sign-in-button" OnClick="btnSignIn_Click" />
    </div>
</div>


        <!-- Hero Section -->
        <div class="hero-section">
            <h1>Experience Movies Like Never Before!</h1>
            <p>Book tickets for the latest releases with ease.</p>
            <asp:Button runat="server" Text="Explore" Width="140px" Height="" CssClass="custom-button" />
        </div>

        <!-- Featured Movies Section -->
<div class="featured">
    <h2>Seamless Booking, Just a Few Clicks Away! 🎟️✨</h2>
    <div class="featured-container">
        <div class="movie">
            <img src="/Images/Pic1.png" alt="Movie 1"/>
            <h3>Choose Your Movie</h3>
            <p>Browse through the latest blockbusters and pick the one that excites you the most!</p>
        </div>
        <div class="movie">
            <img src="/Images/Pic3.png" alt="Movie 2"/>
            <h3> Select Your Seats</h3>
            <p>Get the best view by choosing your preferred seats—front row thrill or cozy back seats, it's your call!</p>
        </div>
        <div class="movie">
            <img src="/Images/Pic2.png" alt="Movie 3"/>
            <h3>Make Payment & Enjoy!</h3>
            <p>Complete your booking with a secure and hassle-free payment. Now, sit back, relax, and get ready for an amazing movie experience! 🍿🎬</p>
        </div>
    </div>
</div>

      <!--  <div class="slideshow-container">
    <div class="slide fade">
        <img src="/Images/backgrou.jpg" alt="Slide 1"/>
        <p>text1</p>
    </div>
    <div class="slide fade">
        <img src="/Images/background4.jpg" alt="Slide 2"/>
        <p>text2</p>
    </div>
    <div class="slide fade">
        <img src="/Images/ValorantWallpaper_Singularity_galleryimage.jpg" alt="Slide 3"/>
        <p>text3</p>
    </div>
</div> -->  


        <div class="Main">
            <div class="MainContainer">
                <p>Welcome to CineGo, your one-stop destination for hassle-free movie ticket booking! Explore the latest blockbusters, choose your preferred showtime, and reserve your seats with just a few clicks. Enjoy a seamless experience with secure payments, instant e-ticket generation, and exclusive movie deals. Book now and never miss out on your favorite films! 🎬🍿</p>
            </div>
        </div>
    </form>
</body>
</html>
