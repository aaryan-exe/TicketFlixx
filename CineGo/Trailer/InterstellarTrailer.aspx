<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InterstellarTrailer.aspx.cs" Inherits="CineGo.Trailer.InterstellarTrailer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link type="text/css" rel="stylesheet" href="InterstellarTrailerStyle.css" />
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
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet"/>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CineGo</title>
<link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
       <div class="navigation">
    <div class="logo">CineGo</div>
    <div class="home-parent">
        <div class="home"><a href="/Lander/Lander.aspx">Home</a></div>
        <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
        <div class="about"><a href="/AboutUs/About.aspx">About Us</a></div>
    </div>
    <div class="auth-buttons">
        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="sign-in-button" />
    </div>
</div>
    </form>
</body>
</html>
