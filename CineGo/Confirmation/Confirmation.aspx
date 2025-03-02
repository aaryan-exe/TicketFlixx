<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="CineGo.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Apply dark theme */
        body {
            font-family: "DM Sans", sans-serif;
            background-color: #0E0D13;
            color: #ffffff;
            display: flex;
            flex-direction: column; /* Arrange content vertically */
            min-height: 100vh; /* Ensures the page takes at least full height */
            margin: 0;
        }

        /* Main content container */
        .content-wrapper {
            flex: 1; /* Pushes footer to bottom when there’s little content */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Confirmation box styling */
        .confirmation-container {
            margin-top:70px;
            height: 430px;
            background: #1A1826;
            padding: 30px;
            border-radius: 15px;
            width: 380px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }

        /* Success icon */
        .success-icon {
            font-size: 50px;
            color: #7A63F9;
            margin-bottom: 15px;
        }

        /* Headings and text */
        h2 {
            color: #A282FF;
            font-size: 24px;
            margin-bottom: 10px;
        }

        p {
/*            margin-top: 40px;*/
            font-size: 18px;
            color: #ccc;
            margin-bottom: 20px;
        }

        /* Button styling */
        .home-btn {
            margin:40px 0px 0px 0px;
            background: #7A63F9;
            color: white;
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .home-btn:hover {
            background: #9F8EFF;
        }


        /* Responsive adjustments */
        @media (max-width: 450px) {
            .confirmation-container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>

    <!-- Page Content -->
    <div class="content-wrapper">
        <div class="confirmation-container">
            <div class="success-icon">✔</div>
            <h2>Payment Successful!</h2>
            <p>
                <asp:Label ID="MovieNamelbl" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Timinglbl" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Theaterlbl" runat="server"></asp:Label>
            </p>
            <p>Thank you for your purchase. Your booking has been confirmed.</p>
            <button class="home-btn" onclick="window.location.href='index.aspx'">Go to Homepage</button>
        </div>
    </div>

    <!-- Footer -->

</asp:Content>
