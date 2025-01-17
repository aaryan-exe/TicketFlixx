<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CineGo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinego</title>
    <link type="text/css" rel="stylesheet" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <p id="Login">
            Login</p>
        <br />
        <br />
        username:<asp:TextBox ID="TextBox1" runat="server" Width="323px"></asp:TextBox>
        <br />
        <br />
        Password<asp:TextBox ID="TextBox2" runat="server" Width="319px"></asp:TextBox>
        <br />
        <asp:Label ID="OutputLabel" runat="server" Text="......"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" Width="75px" />
    </form>
</body>
</html>
