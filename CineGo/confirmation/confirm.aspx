<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="CineGo.confirmation.WebForm1" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Confirmation - CineGo</title>
    <style>
        body {
            font-family: "Bricolage Grotesque", sans-serif;
            background-color: #FAF6F3;
            color: #313131;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        .confirmation-container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 400px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            text-align: center;
            position: relative;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .success-icon {
            font-size: 50px;
            color: #008000;
            margin-bottom: 15px;
        }

        h2 {
            color: #D72638;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .movie-name {
            font-size: 18px;
            font-weight: 600;
            color: #555;
            margin-bottom: 20px;
            padding: 10px;
            background: #F8E1E3;
            border-radius: 6px;
            display: inline-block;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        .home-btn {
            background: #D72638;
            color: white;
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .home-btn:hover {
            background: #A6192E;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="confirmation-container">
            <div class="success-icon">✔️</div>
            <h2>Payment Successful!</h2>
            <div class="movie-name">
                <asp:Label ID="lblMovieTitle" runat="server" Text="Movie Title" />
            </div>
            <p>Thank you for your purchase. Your booking has been confirmed.</p>
            <asp:Button ID="btnHome" runat="server" Text="Go to Homepage" CssClass="home-btn" OnClick="btnHome_Click" />
        </div>
    </form>
</body>
</html>
