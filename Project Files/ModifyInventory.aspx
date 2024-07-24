<%@ Page Title="Modify Inventory Details" Language="C#" AutoEventWireup="true" CodeBehind="ModifyInventory.aspx.cs" Inherits="WebApplication4.ViewInventory" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modify Inventory Details</title>
    <style>
        body {
            background: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg') no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: start;
            height: 100vh;
            margin: 10px;
            padding: 10px;
            font-size: 16px;
            font-family: Arial, sans-serif;
        }

        .container {
            background: rgba(250, 250, 250, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 80%;
            max-width: 1200px;
        }

        .container h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .container .aspButton {
            padding: 10px 20px;
            font-size: 18px;
            margin-top: 20px;
        }

        /* GridView styles */
        #GridView1 {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }

        #GridView1 th, #GridView1 td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        #GridView1 th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: #333;
        }

        #GridView1 tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #GridView1 tr:hover {
            background-color: #ddd;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0e1112;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Modify Inventory Details:</h1>
            <br/>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="GoodsId">
                <Columns>
                   <asp:BoundField DataField="GoodsId" HeaderText="Goods ID" ReadOnly="True" />



                      
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="InboundDate" HeaderText="Inbound Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="UserID" HeaderText="User ID" />
                    <asp:BoundField DataField="GoodsType" HeaderText="Goods Type" />
                    <asp:BoundField DataField="StorageSection" HeaderText="Storage Section" />
                    <asp:BoundField DataField="RateId" HeaderText="Rate ID" />
                    <asp:BoundField DataField="Volume" HeaderText="Volume" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="Qty" HeaderText="Quantity" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <button class="button" runat="server" OnServerClick="goBackbtn">Go Back</button>
        </div>
    </form>
</body>
</html>