<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lander.aspx.cs" Inherits="CineGo.Lander.Lander" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CineGo</title>
    <link type="text/css" rel="stylesheet" href="Lander.css" />
    <!-- Font 1 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    <!-- Dm sans -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="navigation">
            <div class="logo">TicketFlicks</div>
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

        <div class="Seamless">
            <p>Seamless Booking Process</p>
        </div>

        <!-- Container 1 -->
        <div class="process1-container">
            <div class="image1">
                <img src="/Images/Pic1.svg" alt="Movie Selection" />
            </div>
            <div class="text-container1">
                <h2>Choose Your Moviee</h2>
                <p>Browse through the latest blockbusters and pick the one that excites you the most! Explore different genres, check ratings, and view posters to find your perfect film.</p>
            </div>
        </div>

        <!-- Container 2 -->
        <div class="process2-container">
            <div class="text-container2">
                <h2>Choose Your Moviee</h2>
                <p>Browse through the latest blockbusters and pick the one that excites you the most! Explore different genres, check ratings, and view posters to find your perfect film.</p>
            </div>
            <div class="image2">
                <img src="/Images/Pic2.svg" alt="Movie Selection" />
            </div>
        </div>


        <!-- Container 3 -->
        <div class="process3-container">
    <div class="image3">
        <img src="/Images/Pic3.svg" alt="Movie Selection" />
    </div>
    <div class="text-container3">
        <h2>Choose Your Moviee</h2>
        <p>Browse through the latest blockbusters and pick the one that excites you the most! Explore different genres, check ratings, and view posters to find your perfect film.</p>
    </div>
</div>
    </form>
</body>
</html>
