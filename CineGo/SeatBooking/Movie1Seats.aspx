<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movie1Seats.aspx.cs" Inherits="CineGo.SeatBooking.Movie1Seats" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="Movie1Seat.css" />
    <title>Seat Booking</title>
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
        </div>

        <div class="heading">
            <asp:Label ID="MovieSeatName" runat="server">Interstellar</asp:Label>
        </div>

        <div class="container">
            <!-- Poster Section (Left) -->
            <div class="poster">
                <img id="interImage" src="/Images/InterstellarPoster.jpg" width="300" height="400px" alt="Movie 1" />
            </div>

            <!-- Seat Selection Section -->
           <div class="seats">
    <div><asp:CheckBox ID="CheckBox1" runat="server" Text="Seat 1" /></div>
    <div><asp:CheckBox ID="CheckBox2" runat="server" Text="Seat 2" /></div>
    <div><asp:CheckBox ID="CheckBox3" runat="server" Text="Seat 3" /></div>
    <div><asp:CheckBox ID="CheckBox4" runat="server" Text="Seat 4" /></div>
    <div><asp:CheckBox ID="CheckBox5" runat="server" Text="Seat 5" /></div>
    <div><asp:CheckBox ID="CheckBox6" runat="server" Text="Seat 6" /></div>
    <div><asp:CheckBox ID="CheckBox7" runat="server" Text="Seat 7" /></div>
    <div><asp:CheckBox ID="CheckBox8" runat="server" Text="Seat 8" /></div>
    <div><asp:CheckBox ID="CheckBox9" runat="server" Text="Seat 9" /></div>
    <div><asp:CheckBox ID="CheckBox10" runat="server" Text="Seat 10" /></div>
    <div><asp:CheckBox ID="CheckBox11" runat="server" Text="Seat 11" /></div>
    <div><asp:CheckBox ID="CheckBox12" runat="server" Text="Seat 12" /></div>
    <div><asp:CheckBox ID="CheckBox13" runat="server" Text="Seat 13" /></div>
    <div><asp:CheckBox ID="CheckBox14" runat="server" Text="Seat 14" /></div>
    <div><asp:CheckBox ID="CheckBox15" runat="server" Text="Seat 15" /></div>
    <div><asp:CheckBox ID="CheckBox16" runat="server" Text="Seat 16" /></div>
    <div><asp:CheckBox ID="CheckBox17" runat="server" Text="Seat 17" /></div>
    <div><asp:CheckBox ID="CheckBox18" runat="server" Text="Seat 18" /></div>
    <div><asp:CheckBox ID="CheckBox19" runat="server" Text="Seat 19" /></div>
    <div><asp:CheckBox ID="CheckBox20" runat="server" Text="Seat 20" /></div>
</div>

        </div>

        <asp:Button ID="btnSubmit" runat="server" Text="Confirm Selection" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
