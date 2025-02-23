<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Batman.aspx.cs" Inherits="CineGo.Trailer.Batman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet" />
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
        <div class="trailer">
            <div class="video">
            </div>

            <div class="option">
            </div>
        </div>



        <div class="process2-container">
            <div class="text-container2">
                <iframe width="820" height="461" src="https://www.youtube.com/embed/LDG9bisJEaI?si=CtU6NIGNIHWTu_oH"  title="Batman Trailer" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                </iframe>
            </div>
            <div class="timing-theater-container">
                <div class="image2">
                    <p class="para" style="color: #f4f4f4; font-size: 18px; font-family: 'DM Sans', sans-serif;">
                        Timing
                        <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                    </p>

                    <asp:Button ID="time1" runat="server" Text="9:00 AM" Width="90px" CssClass="time-button" OnClick="time1_Click1" />
                    <asp:Button ID="time2" runat="server" Text="11:00 AM" Width="90px" CssClass="time-button" OnClick="time2_Click1" />
                    <asp:Button ID="time3" runat="server" Text="05:00 PM" Width="90px" CssClass="time-button" OnClick="time3_Click1" />
                </div>

                <div class="image3">
                    <p class="para" style="color: #f4f4f4; font-size: 18px; font-family: 'DM Sans', sans-serif;">
                        Theater
                        <asp:Label ID="TheaterLabel" runat="server"></asp:Label>
                    </p>

                    <asp:Button ID="Button1" runat="server" Text="IMAX" Width="90px" CssClass="time-button" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="PVR" Width="90px" CssClass="time-button" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="INOX" Width="90px" CssClass="time-button" OnClick="Button3_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="WarningLabel" runat="server"></asp:Label>
                </div>
                     <asp:Button ID="BookButton" runat="server" Text="Next" OnClick="BookButton_Click" />
            </div>
</div>
    </form>
</body>
</html>
