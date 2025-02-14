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
</head>
<body>
    <form id="form1" runat="server">
        <div class="navigation">
            <div class="logo">Cinego</div>
            <div class="home-parent">
                <div class="home"><a href="Home.aspx">Home</a></div>
                <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
                <div class="movies"><a href="About.aspx">About Us</a></div>
            </div>
        </div>

        <!-- Hero Section -->
        <div class="hero-section">
            <h1>Experience Movies Like Never Before!</h1>
            <p>Book tickets for the latest releases with ease.</p>
             <asp:Button runat="server" Text="Book Tickets" Width="140px" Height="" CssClass="custom-button" />
        </div>

    </form>
</body>
</html>
