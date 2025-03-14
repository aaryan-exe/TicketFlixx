<%@ Page Title="My Tickets" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="CineGo.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link type="text/css" rel="stylesheet" href="Ticket.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="ticket-container">
        <asp:Repeater ID="rptTickets" runat="server">
            <ItemTemplate>
                <div class="ticket-card">
                    <div class="ticket-title"><%# Eval("MovieName") %></div>
                    <div class="ticket-info">Theater: <%# Eval("TheaterName") %></div>
                    <div class="ticket-info">Date: <%# Eval("ShowDate", "{0:yyyy-MM-dd}") %></div>
                    <div class="ticket-info">Time: <%# Eval("ShowTime") %></div>
                    <div class="ticket-info">Price: <%# Eval("Price", "{0:C}") %></div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
