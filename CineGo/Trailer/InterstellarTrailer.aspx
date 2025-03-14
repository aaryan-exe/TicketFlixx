<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InterstellarTrailer.aspx.cs" Inherits="CineGo.Trailer.InterstellarTrailer" MasterPageFile="~/Site1.master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="InterstellarTrailerStyle.css" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet" />
    <style>
        .date {
            height: 104px;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="process2-container">
        
            <iframe width="820" height="461" src="https://www.youtube.com/embed/zSWdZVtXT7E?si=Hg9QbtG-8cZoqfKa"
                title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write;
                encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin"
                allowfullscreen></iframe>
        </div>
        <div class="text-container2">
        <div class="timing-theater-container">
            <div class="image2">
                <p class="para" style="color: #f4f4f4; font-size: 18px; font-family: 'DM Sans', sans-serif;">
                    Date: <asp:Label ID="DateLabel" runat="server"></asp:Label>
                </p>
                <asp:Button ID="Date1" runat="server" Text="3 March 2025" Width="90px" CssClass="date-button" OnClick="Date1_Click" AutoPostBack="False"/>
                <asp:Button ID="Date2" runat="server" Text="4 March 2025" Width="90px" CssClass="date-button" OnClick="Date2_Click" />
                <asp:Button ID="Date3" runat="server" Text="5 March 2025" Width="90px" CssClass="date-button" OnClick="Date3_Click" />
            </div>

            <div class="image2">
                <p class="para" style="color: #f4f4f4; font-size: 18px; font-family: 'DM Sans', sans-serif;">
                    Timing: <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                </p>
                <asp:Button ID="time1" runat="server" Text="9:00 AM" Width="90px" CssClass="time-button" OnClick="time1_Click1" />
                <asp:Button ID="time2" runat="server" Text="11:00 AM" Width="90px" CssClass="time-button" OnClick="time2_Click1" />
                <asp:Button ID="time3" runat="server" Text="05:00 PM" Width="90px" CssClass="time-button" OnClick="time3_Click1" />
            </div>

            <div class="image3">
                <p class="para" style="color: #f4f4f4; font-size: 18px; font-family: 'DM Sans', sans-serif;">
                    Theater: <asp:Label ID="TheaterLabel" runat="server"></asp:Label>
                </p>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="styled-dropdown"
                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Text="Select Theater" Value="" />
                    <asp:ListItem Text="IMAX" Value="IMAX" />
                    <asp:ListItem Text="PVR" Value="PVR" />
                    <asp:ListItem Text="INOX" Value="INOX" />
                    <asp:ListItem Text="Cinepolis" Value="Cinepolis" />
                    <asp:ListItem Text="Carnival Cinemas" Value="Carnival" />
                </asp:DropDownList>
                <br />
                <asp:Label ID="WarningLabel" runat="server"></asp:Label>
            </div>

            <asp:Button ID="BookButton" runat="server" Text="Next" OnClick="BookButton_Click" />
        </div>
            </div>
        <asp:Label ID="SessionLbl" runat="server" Text="Label" ForeColor="#f3f3f3"></asp:Label>
</asp:Content>
