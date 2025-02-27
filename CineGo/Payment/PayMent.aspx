<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayMent.aspx.cs" Inherits="CineGo.WebForm4" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link type="text/css" rel="stylesheet" href="SignupStyle.css" />
    <link type="text/css" rel="stylesheet" href="Lander.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Payment - CineGo</title>
    <style>
        body {
            font-family: "Bricolage Grotesque", sans-serif;
            background-color: #131118;
            color: #313131;
            display: flex;
            justify-content: center;
            margin: 0;
        }

        .payment-container {
            background: #1A1826;
            padding: 40px;
            border-radius: 12px;
            width: 420px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            text-align: center;
            position: relative;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            font-family: "Bricolage Grotesque", serif;
            color: #7A63F9;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .movie-details {
            font-family: "Bricolage Grotesque", serif;
            font-size: 18px;
            font-weight: 500;
            color: #555;
            margin-bottom: 25px;
            padding: 12px;
            background: #F8E1E3;
            border-radius: 6px;
        }

        .payment-method, .card-details, .upi-details {
            font-family: "Bricolage Grotesque", serif;
            text-align: left;
        }

        label {
            font-family: "Bricolage Grotesque", serif;
            font-weight: 600;
            font-size: 15px;
            color: #f4f4f4;
        }

        .input-field {
            width: 100% !important;
            padding: 14px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 6px;
            font-size: 16px;
            background-color: #3C394C;
            color: #f4f4f4;
            outline: none;
            box-sizing: border-box;
        }


        select, input {
            width: 100%;
            padding: 14px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 6px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #3C394C;
            color: #f4f4f4;
            outline: none;
        }

            input:focus, select:focus {
                border-color: #7A63F9;
                box-shadow: 0px 0px 5px rgba(215, 38, 56, 0.3);
            }

        .pay-btn {
            background: #7A63F9;
            color: white;
            width: 100%;
            padding: 16px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            margin-top: 25px;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

            .pay-btn:hover {
                background: #9F8EFF;
                transform: scale(1.05);
            }

        .upi-details {
            display: none;
        }

        .secure-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
            font-size: 14px;
            color: #f4f4f4;
        }

            .secure-icon img {
                width: 18px;
                height: 18px;
                margin-right: 8px;
            }

        #RequiredFieldValidator1 {
            margin-left: 12px;
        }

        #RequiredFieldValidator2 {
            margin-left: 12px;
        }

        #RequiredFieldValidator3 {
            margin-left: 12px;
        }
    </style>
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
</head>
<body>
    <form id="form1" runat="server">
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
            <div id="card-details" class="card-details">
                <label for="card-number">Card Number:</label><label for="payment"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card number is required" ForeColor="#D72638"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="txtCardNumber" runat="server" CssClass="input-field" placeholder="1234 5678 9012 3456"></asp:TextBox>
                <label for="expiry">
                    Expiry Date:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtExpiry" ErrorMessage="Expiry date is required" ForeColor="#D72638"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="txtExpiry" runat="server" CssClass="input-field" TextMode="Month"></asp:TextBox>
                <label for="cvv">
                    CVV:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCVV" ErrorMessage="CVV is required" ForeColor="#D72638"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="txtCVV" runat="server" CssClass="input-field" placeholder="123"></asp:TextBox>
            </div>
            <div id="upi-details" class="upi-details">
                <label for="upi-id">UPI ID:</label>
                <asp:TextBox ID="txtUPI" runat="server" CssClass="input-field" placeholder="example@upi"></asp:TextBox>
            </div>
            <asp:Button ID="btnPay" runat="server" Text="Pay Securely" CssClass="pay-btn" OnClick="btnPay_Click" />
        </div>
         <asp:Label ID="SessionLbl" runat="server" Text="Label" ForeColor="#f3f3f3"></asp:Label>
    </form>
</body>
</html>


