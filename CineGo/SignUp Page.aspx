<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp Page.aspx.cs" Inherits="CineGo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Create account<br />
        <br />
        Name:<asp:TextBox ID="NameTextBox" runat="server" style="margin-left: 11px" Width="219px"></asp:TextBox>
        <br />
        <br />
        Email<asp:TextBox ID="EmailTextBox" runat="server" style="margin-left: 22px" TextMode="Email" Width="217px"></asp:TextBox>
        <br />
        <br />
        Username<asp:TextBox ID="UsernameTextBox" runat="server" style="margin-left: 12px" Width="202px"></asp:TextBox>
        <br />
        <br />
        Mobile no<asp:TextBox ID="MobileTextBox" runat="server" style="margin-left: 15px" Width="202px"></asp:TextBox>
        <br />
        <br />
        Password<asp:TextBox ID="PasswordTextBox" runat="server" style="margin-left: 24px" TextMode="Password" Width="195px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" style="margin-left: 60px" Text="Create Account" Width="227px" OnClick="Button1_Click"  />
        <br />
        <br />
        <asp:Label ID="OutputLabel" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
