<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutboundOrder.aspx.cs" Inherits="WebApplication4.OutboundOrder" %>

<!DOCTYPE html>

<html>
<head>
    <title>Create Outbound Order</title>
    <style>
        body {
            background: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg') no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: rgba(250, 250,250, 0.7);
            color: black;
            padding: 20px;
            border-radius: 10px;
            max-width: 500px;
            margin: auto;
        }
        label, input, button {
            margin: 10px;
            align-items:center;
        }
        input, button {
            padding: 10px;
            font-size: 1em;
        }
        h1 {
            color: black;
        }
        .calendar-container {
            display: flex;
            justify-content: center;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <form runat="server">
            <div>
                <h1>Create Outbound Order</h1>
                <label for="txtGoodsID">Goods ID:</label>
                <asp:TextBox ID="txtGoodsID" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="calDepartureDate">Departure Date:</label>
                <div class="calendar-container">
                    <asp:Calendar ID="calDepartureDate" runat="server"></asp:Calendar>
                </div>
            </div>
            <div>
                <label for="txtQuantity">Quantity:</label>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnCreateOrder" runat="server" Text="Create Order" OnClick="btnCreateOrder_Click" />
            </div>
        </form>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
</body>
</html>
