<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CineGo.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>TicketFlicks</title>
    <link type="text/css" rel="stylesheet" href="/Login/LoginStyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login-container">
        <div class="branding-section">
            <p class="site-title">Book.<br />Watch.<br />Enjoy.</p>
        </div>
        <div class="form-section">
            <div class="login-form">
                <p class="login-title">Sign In</p>
                <p class="form-label">Email <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email address is required" ForeColor="#D72638" CssClass="validator" /></p>
                <asp:TextBox ID="emailTextBox" runat="server" CssClass="input-field" />
                <p class="form-label">Password <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="Password is required" ForeColor="#D72638" CssClass="validator" /></p>
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" CssClass="input-field" />
                <asp:Button runat="server" Text="Log In" OnClick="Button1_Click" CssClass="custom-button" />
                <asp:Label ID="OutputLabel" runat="server" CssClass="output-message" />
                <p class="signup-link">New user? <a href="/SignUp/SignUpPage.aspx">Sign up</a></p>
            </div>
        </div>
    </div>
</asp:Content>