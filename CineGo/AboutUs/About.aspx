﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CineGo.AboutUs.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="AboutStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="navigation">
    <div class="logo">CineGo</div>
    <div class="home-parent">
        <div class="home"><a href="/Lander/Lander.aspx">Home</a></div>
        <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
        <div class="about   "><a href="About.aspx">About Us</a></div>
    </div>
    <div class="auth-buttons">
        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="sign-in-button" />
    </div>
</div>
        <div class="aboutme">
            <h1><b>About Us</b></h1>
            <p>We are a passionate team of two—Aryan and Shivam —working together to create a seamless and efficient movie ticket booking platform. As BCA students with a shared interest in web development, we wanted to build something practical, user-friendly, and impactful. Aryan is responsible for designing the UI/UX, front-end development, and backend functionality, ensuring a smooth and visually appealing user experience. Meanwhile, [Friend's Name] contributes by managing the technical aspects, helping with development, and ensuring the platform runs efficiently. Together, we are committed to making movie ticket booking easy, fast, and hassle-free. Our platform not only allows users to book tickets effortlessly but also provides an admin panel where theater owners can manage movie listings, showtimes, and other details. We are collaborating on GitHub to bring this project to life, using ASP.NET Web Forms and Azure SQL for database management. Our goal is to create a reliable, user-centric platform that enhances the movie-going experience for everyone. As we continue to develop and refine our project, we are excited to bring new features and improvements to make ticket booking more convenient than ever. Thank you for being a part of our journey!

</p>
        </div>
    </form>
</body>
</html>
