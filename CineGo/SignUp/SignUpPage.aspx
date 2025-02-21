 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="CineGo.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="SignupStyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />

    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet"/>
</head>
<body>
    <div class="parent">
        <div class="rectangle-div">
                <p class="cinego">CineGo.</p>
            </div>
        <div class="parent-form">
            <div class="form-div">
                <div class="center-form-div">
                    <form id="form1" runat="server">
                        <p class="CreateAccount">Create account</p>
                        <p class="Description">Sign up to book tickets easily, choose seats, and enjoy the latest movies.</p>
                        <br />
                        <p class="name">Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is required" ForeColor="#D72638"></asp:RequiredFieldValidator>
                        </p>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="100%" Height="35px"></asp:TextBox>
                        <br />
                        <p class="email">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="email is rquired" ForeColor="#D72638"></asp:RequiredFieldValidator>
                        </p>
                        <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" Width="100%" Height="35px"></asp:TextBox>
                        <br />
                        <p class="mobile">Mobile no<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileTextBox" ErrorMessage="mobile no is required" ForeColor="#D72638"></asp:RequiredFieldValidator>
                        </p>
                        <asp:TextBox ID="MobileTextBox" runat="server" Width="100%" Height="35px"></asp:TextBox>
                        <br />
                        <p class="password">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="password is required" ForeColor="#D72638"></asp:RequiredFieldValidator>
                        </p>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="100%" Height="35px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button runat="server" Text="Create Account" Width="100%" OnClick="Button1_Click" CssClass="custom-button" />
                        <br />
                        <asp:Label ID="OutputLabel" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                        <p class="endpara">Already a user? <a href="\Login\LoginPage.aspx">Log in</a>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
