<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CineGo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinego</title>
    <link type="text/css" rel="stylesheet" href="LoginStyle.css" />
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
         <video width="640" height="360"  autoplay loop muted>
    <source src="video1.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

    </div>
     <div class="parent-form">
         <div class="form-div">
             <div class="center-form-div">
                 <form id="form1" runat="server">
                     <p class="Login">Sign in</p>
                     <p class="email">Email</p>
                     <asp:TextBox ID="emailTextBox" runat="server" Width="100%" Height="35px"></asp:TextBox>
                     <br />
                     <p class="password">Password</p>
                     <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" Width="100%" Height="35px"></asp:TextBox>
                     <br />
                     <br />
                     <asp:Button runat="server" Text="Log in" Width="100%" OnClick="Button1_Click" CssClass="custom-button" />
                     <br />
                     <asp:Label ID="OutputLabel" runat="server"></asp:Label>
                     <br />
                     <br />
                     <p class="endpara">New user? <a href="/SignUp/SignUpPage.aspx">Sign up</a> </p>
                 </form>
             </div>
         </div>
     </div>
 </div>
</body>
</html>
