<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="CineGo.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .confirmation-container {
            background: #1A1826;
            border: solid #7A63F9 1px;
            padding: 30px;
            border-radius: 10px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin: 0 auto;
            top: 100px; /* Offset from the fixed navigation */
        }

        h2 {
            color: #7A63F9; /* Match master page theme */
            margin-bottom: 15px;
            font-size: 24px;
            font-family: "DM Sans", serif;
            font-weight: 600;
        }

        .success-icon {
            font-size: 60px;
            color: #008000;
            margin-bottom: 20px;
            display: block;
        }

        p {
            color: #f4f4f4;
            margin-bottom: 25px;
            line-height: 1.5;
            font-family: "DM Sans", serif;
        }

        .home-btn {
            background: #7A63F9; /* Match master page button color */
            color: white;
            width: 100%;
            padding: 12px 20px;
            border: none;
            border-radius: 8px; /* Match master page button radius */
            font-size: 16px;
            font-family: "DM Sans", serif;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .home-btn:hover {
            background: #9F8EFF; /* Match master page hover color */
            transform: scale(1.05);
        }

        /* Ensure content doesn't hide behind fixed nav */
        .main-content {
            padding-top: 90px; /* Height of navigation + some spacing */
        }

        /* Responsive adjustments */
        @media (max-width: 480px) {
            .confirmation-container {
                padding: 20px;
                max-width: 90%;
                top: 80px;
            }

            h2 {
                font-size: 20px;
            }

            .success-icon {
                font-size: 50px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="confirmation-container">
        <span class="success-icon">✔️</span>
        <h2>Payment Successful!</h2>
        <p>Thank you for your purchase. Your booking has been confirmed.</p>
        <asp:Button ID="HomeButton" runat="server" Text="Go to Homepage" CssClass="home-btn" OnClick="HomeButton_Click" />
    </div>
</asp:Content>