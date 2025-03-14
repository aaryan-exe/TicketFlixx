<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Lander.aspx.cs" Inherits="CineGo.Lander.Lander" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Experience Movies Like Never Before!</h1>
        <p>Book tickets for the latest releases with ease.</p>
        <asp:Button runat="server" Text="Explore" Width="140px" CssClass="custom-button" />
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
            <h2>Choose Your Movie</h2>
            <p>Browse through the latest blockbusters and pick the one that excites you the most! Explore different genres, check ratings, and view posters to find your perfect film.</p>
        </div>
    </div>

    <!-- Container 2 -->
    <div class="process2-container">
        <div class="text-container2">
            <h2>Select your seats</h2>
            <p>With TicketFlicks, picking your perfect seat is effortless! Just tap on an available seat, and it's yours—no last-minute hassle. Our user-friendly layout ensures a smooth booking experience.</p>
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
            <h2>Seamless Payment</h2>
            <p>Booking is fast and secure with multiple payment options, including cards, UPI, and wallets. With encrypted transactions, you can pay with confidence and enjoy your movie stress-free!








</p>
        </div>
    </div>

</asp:Content>
