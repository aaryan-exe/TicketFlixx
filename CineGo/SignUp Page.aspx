<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CineGo.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="SignupStyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
</head>
<body>
    <div class="parent">
        <div class="rectangle-div"></div>
        <div class="parent-form">
            <div class="form-div">
                <div class="center-form-div">
                    <form id="form1" runat="server">
                        <p class="CreateAccount">Create account</p>
                        <p class="Description">Sign up to book tickets easily, choose seats, and enjoy the latest movies.</p>
                        <br />
                        <p class="name">Name</p>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="300px" Height="30px"></asp:TextBox>
                        <br />
                        <p class="email">Email</p>
                        <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" Width="300px" Height="30px"></asp:TextBox>
                        <br />
                        <p class="username">Username</p>
                        <asp:TextBox ID="UsernameTextBox" runat="server" Width="300px" Height="30px"></asp:TextBox>
                        <br />
                        <p class="mobile">Mobile no</p>
                        <asp:TextBox ID="MobileTextBox" runat="server" Width="300px" Height="30px"></asp:TextBox>
                        <br />
                        <p class="password">Password</p>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="300px" Height="30px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button runat="server" Text="Create Account" Width="300px" OnClick="Button1_Click" CssClass="custom-button" />
                        <br />
                        <asp:Label ID="OutputLabel" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                        <p class="endpara">Already a user? <a href="Login Page.aspx">Log in</a> </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
