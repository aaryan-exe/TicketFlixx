<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movie1Seats.aspx.cs" Inherits="CineGo.SeatBooking.Movie1Seats" MasterPageFile="~/Site1.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
      <link type="text/css" rel="stylesheet" href="Movie1Seat.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 

        <div class="heading">
            <asp:Label ID="MovieSeatName1" runat="server">Interstellar</asp:Label>
            <div class="info">
                <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                <asp:Label ID="TheaterLabel" runat="server"></asp:Label>
            </div>
        </div>

        <div class="container">
            <div class="poster">
                <img id="interImage" src="/Images/InterstellarPoster.jpg" width="300" height="400px" alt="Movie Poster" />
            </div>

            <div class="seat-container">
                <asp:Button ID="Seat1" runat="server" Text="1" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat2" runat="server" Text="2" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat3" runat="server" Text="3" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat4" runat="server" Text="4" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat5" runat="server" Text="5" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat6" runat="server" Text="6" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat7" runat="server" Text="7" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat8" runat="server" Text="8" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat9" runat="server" Text="9" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat10" runat="server" Text="10" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat11" runat="server" Text="11" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat12" runat="server" Text="12" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat13" runat="server" Text="13" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat14" runat="server" Text="14" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat15" runat="server" Text="15" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat16" runat="server" Text="16" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat17" runat="server" Text="17" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat18" runat="server" Text="18" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat19" runat="server" Text="19" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat20" runat="server" Text="20" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat21" runat="server" Text="21" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat22" runat="server" Text="22" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat23" runat="server" Text="23" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat24" runat="server" Text="24" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat25" runat="server" Text="25" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat26" runat="server" Text="26" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat27" runat="server" Text="27" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat28" runat="server" Text="28" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat29" runat="server" Text="29" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat30" runat="server" Text="30" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat31" runat="server" Text="31" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat32" runat="server" Text="32" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat33" runat="server" Text="33" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat34" runat="server" Text="34" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat35" runat="server" Text="35" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat36" runat="server" Text="36" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat37" runat="server" Text="37" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat38" runat="server" Text="38" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />
                <asp:Button ID="Seat39" runat="server" Text="39" CssClass="seat-button" OnClick="Seat_Click" AutoPostBack="True" />

               <div class="book">
                     <asp:Button ID="BookButton" runat="server" Text="Book" CssClass="book-button" Width="120px" OnClick="BookButton_Click" />
               </div>
            </div>
           
        </div>

       
</asp:Content>
