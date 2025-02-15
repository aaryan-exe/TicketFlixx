<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movie1Seats.aspx.cs" Inherits="CineGo.SeatBooking.Movie1Seats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="Movie1Seat.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    <title></title>
    <script>
        function toggleSeat(button) {
            if (button.classList.contains("selected")) {
                button.classList.remove("selected");
                button.style.backgroundColor = "green";
            } else {
                button.classList.add("selected");
                button.style.backgroundColor = "red";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
            <div class="navigation">
<div class="logo">CineGo</div>
<div class="home-parent">
    <div class="home"><a href="Home.aspx">Home</a></div>
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

            <!-- Seat Selection Section (Center) -->
            <div class="seat-container">
                <asp:Button ID="Seat1" runat="server" Text="1" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Seat2" runat="server" Text="2" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Seat3" runat="server" Text="3" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Seat4" runat="server" Text="4" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button5" runat="server" Text="5" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button6" runat="server" Text="6" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button7" runat="server" Text="7" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button8" runat="server" Text="8" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button9" runat="server" Text="9" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button10" runat="server" Text="10" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />

                <asp:Button ID="Button11" runat="server" Text="11" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button12" runat="server" Text="12" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button13" runat="server" Text="13" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button14" runat="server" Text="14" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button15" runat="server" Text="15" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button16" runat="server" Text="16" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button17" runat="server" Text="17" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button18" runat="server" Text="18" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button19" runat="server" Text="19" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button20" runat="server" Text="20" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />

                <asp:Button ID="Button21" runat="server" Text="21" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button22" runat="server" Text="22" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button23" runat="server" Text="23" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button24" runat="server" Text="24" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button25" runat="server" Text="25" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button26" runat="server" Text="26" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button27" runat="server" Text="27" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button28" runat="server" Text="28" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button29" runat="server" Text="29" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button30" runat="server" Text="30" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />

                <asp:Button ID="Button31" runat="server" Text="31" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button32" runat="server" Text="32" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button33" runat="server" Text="33" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button34" runat="server" Text="34" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button35" runat="server" Text="35" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button36" runat="server" Text="36" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button37" runat="server" Text="37" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button38" runat="server" Text="38" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button39" runat="server" Text="39" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button40" runat="server" Text="40" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />

                <asp:Button ID="Button41" runat="server" Text="41" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button42" runat="server" Text="42" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button43" runat="server" Text="43" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button44" runat="server" Text="44" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button45" runat="server" Text="45" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />

                <asp:Button ID="Button46" runat="server" Text="46" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button47" runat="server" Text="47" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button48" runat="server" Text="48" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button49" runat="server" Text="49" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button50" runat="server" Text="50" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button51" runat="server" Text="51" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
                <asp:Button ID="Button52" runat="server" Text="52" CssClass="seat-button" OnClientClick="toggleSeat(this); return false;" />
            </div>
        </div>
        <asp:Label ID="lblSelectedSeats" runat="server" Text="Label"></asp:Label>

    </form>

</body>
</html>
