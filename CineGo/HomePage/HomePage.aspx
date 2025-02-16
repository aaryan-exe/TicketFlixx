<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CineGo.HomePage.WebForm1" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineGo</title>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        /* General Styles */
        body {
            font-family: "Bricolage Grotesque", sans-serif;
            background-color: #FAF6F3;
            margin: 0;
            padding: 0;
        }

        /* Navigation Bar */
        .navigation {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 70px;
            display: flex;
            justify-content: space-between;
            align-items: center;
/*            padding: 0 24px;*/
            background-color: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(12px);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        .logo {
            margin-left:20px;
            font-size: 26px;
            font-weight: 700;
            color: #D72638;
        }

        .nav-links {
            margin-right: 20px;
            display: flex;
            gap: 24px;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 600;
            color: #313131;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #D72638;
        }

        /* Movies Section */
        .movies-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 100px 20px 20px;
            gap: 20px;
        }

        .movie {
            background: white;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 250px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .movie:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .movie img {
            width: 100%;
            height: 350px;
            object-fit: cover;
            border-radius: 8px;
        }

        .rating {
            font-size: 18px;
            color: #FFD700;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        /* Buttons */
        .book-btn {
            background: #D72638;
            color: white;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .book-btn:hover {
            background: #A6192E;
            transform: scale(1.05);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links {
                gap: 16px;
            }
            .movie {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navigation Bar -->
        <nav class="navigation">
            <div class="logo">CineGo</div>
            <div class="nav-links">
                <a href="#">Home</a>
                <a href="#">Movies</a>
                <a href="#">About</a>
            </div>
        </nav>

        <!-- Movies Section -->
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


