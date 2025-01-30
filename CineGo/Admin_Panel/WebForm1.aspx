<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CineGo.Admin_Panel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 235px">
    <form id="form1" runat="server">
        Admin Panel
        <p>
            Add Movie</p>
        Movie Name:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 8px" Width="249px"></asp:TextBox>
        Release Date<asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="126px"></asp:TextBox>
        <p>
            Upload Movie Poster<asp:FileUpload ID="FileUpload1" runat="server" />
            Theaters</p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="79px" />
    </form>
</body>
</html>
