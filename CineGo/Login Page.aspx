<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="CineGo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinego</title>
    <link type="text/css" rel="stylesheet" href="style.css"/>
</head>
<body style="height: 355px">
    <form id="form1" runat="server">
        <p id="Login">
            Login</p>
        <br />
        <br />
        Username:<asp:TextBox ID="usernameTextBox" runat="server" Width="323px" style="margin-left: 29px"></asp:TextBox>
        <br />
        <br />
        Password:<asp:TextBox ID="paswoordTextBox" runat="server" Width="319px" style="margin-left: 11px"></asp:TextBox>
        <br />
        <asp:Label ID="OutputLabel" runat="server" Text="......"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" Width="75px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <br />
        <br />
        Don&#39;t have account ?&nbsp;&nbsp;&nbsp; <asp:Button ID="SignUp" runat="server" OnClick="Button3_Click" Text="Sign Up" />
    </form>
</body>
</html>
