<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayMent.aspx.cs" Inherits="CineGo.WebForm4" MasterPageFile="~/Site1.master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="SignupStyle.css" />
    <link type="text/css" rel="stylesheet" href="Lander.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    
    <script>
        function togglePaymentFields() {
            let paymentMethod = document.getElementById("payment").value;
            let cardDetails = document.getElementById("card-details");
            let upiDetails = document.getElementById("upi-details");

            if (paymentMethod === "UPI") {
                cardDetails.style.display = "none";
                upiDetails.style.display = "block";
            } else {
                cardDetails.style.display = "block";
                upiDetails.style.display = "none";
            }
        }
    </script>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="payment-wrapper">
        <!-- Left Section: Ticket Details -->
        <div class="ticket-details">
            <h2>Booking Summary</h2>
            <label>Selected Seats:</label>
            <asp:Label ID="lblSeats" runat="server" CssClass="detail-text"></asp:Label>

            <label>Ticket Price:</label>
            <asp:Label ID="lblPrice" runat="server" CssClass="detail-text"></asp:Label>

            &nbsp;<label>Total Price:</label>
            <asp:Label ID="lblTotal" runat="server" CssClass="total-price" Text="₹236"></asp:Label>
        </div>

        <!-- Right Section: Payment Form -->
        <div class="payment-container">
            <h2>Complete Your Payment</h2>
            
            <div class="payment-method">
                <label for="payment">Payment Method:</label>
                <select id="payment" onchange="togglePaymentFields()">
                    <option>Credit Card</option>
                    <option>Debit Card</option>
                    <option>UPI</option>
                </select>
            </div>

            <!-- Card Payment Details -->
            <div id="card-details" class="card-details">
                <label for="card-number">Card Number:</label>
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="input-field" placeholder="1234 5678 9012 3456"></asp:TextBox>

                <label for="expiry">Expiry Date:</label>
                <asp:TextBox ID="txtExpiry" runat="server" CssClass="input-field" TextMode="Month"></asp:TextBox>

                <label for="cvv">CVV:</label>
                <asp:TextBox ID="txtCVV" runat="server" CssClass="input-field" placeholder="123"></asp:TextBox>
            </div>

            <!-- UPI Payment Details -->
            <div id="upi-details" class="upi-details" style="display: none;">
                <label for="upi-id">UPI ID:</label>
                <asp:TextBox ID="txtUPI" runat="server" CssClass="input-field" placeholder="example@upi"></asp:TextBox>
            </div>

            <asp:Button ID="btnPay" runat="server" Text="Pay Securely" CssClass="pay-btn" OnClick="btnPay_Click" />
        </div>
    </div>

    <asp:Label ID="SessionLbl" runat="server" Text="Label" ForeColor="#f3f3f3"></asp:Label>
</asp:Content>
