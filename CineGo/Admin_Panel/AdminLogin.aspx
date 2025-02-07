﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CineGo.Admin_Panel.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinego</title>
    <link type="text/css" rel="stylesheet" href="AdminLoginStyle.css" />
     <link rel="preconnect" href="https://fonts.googleapis.com" />
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
 <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />

 <link rel="preconnect" href="https://fonts.googleapis.com"/>
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
 <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet"/>
</head>
<body style="height: 355px">
     <div class="parent">
     <div class="rectangle-div">
        <p class="cinego">CineGo.</p>
    </div>
     <div class="parent-form">
         <div class="form-div">
             <div class="center-form-div">
                 <form id="form1" runat="server">
                     <p class="Login">Admin Login</p>
                     <p class="email">Email</p>
                     <asp:TextBox ID="AdminEmailTextBox" runat="server" Width="100%" Height="35px"></asp:TextBox>
                     <br />
                     <p class="password">Password</p>
                     <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" Width="100%" Height="35px"></asp:TextBox>
                     <br />
                     <br />
                     <<asp:Button runat="server" Text="Log in" Width="100%"  />
                     <br />
                     <asp:Label ID="OutputLabel" runat="server"></asp:Label>
                     <br />
                     <br />
                 </form>
             </div>
         </div>
     </div>
 </div>
</body>
</html>
<!--OnClick="Button1_Click" CssClass="custom-button"-->