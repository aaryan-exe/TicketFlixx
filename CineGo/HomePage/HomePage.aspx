<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CineGo.HomePage.WebForm1" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineGo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #000080;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #000080;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
        }
        .movies-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            gap: 20px;
        }
        .movie {
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 128, 0.3);
            text-align: center;
            width: 250px;
            transition: transform 0.3s;
        }
        .movie:hover {
            transform: scale(1.05);
        }
        .movie img {
            width: 100%;
            height: 350px;
            object-fit: cover;
            border-radius: 10px;
        }
        .rating {
            font-size: 18px;
            color: #FFD700;
            margin-top: 5px;
        }
        .book-btn {
            background: #0000ff;
            color: white;
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .book-btn:hover {
            background: #000080;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <header>🎬 CineGo</header>
    <div class="movies-container">
        <asp:Repeater ID="MovieRepeater" runat="server">
            <ItemTemplate>
                <div class="movie">
                    <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Title") %>' />
                    <h3><%# Eval("Title") %></h3>
                    <div class="rating">⭐ <%# Eval("Rating") %>/10</div>
                    <asp:Button CssClass="book-btn" runat="server" Text="Book Now" CommandArgument='<%# Eval("Title") %>' OnClick="BookNow_Click" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
         </form>
</body>
</html>

