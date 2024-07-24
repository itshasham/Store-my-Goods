<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApproveOrder.aspx.cs" Inherits="WebApplicationFinal.ApproveOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Approval</title>
    <style>
        body {
            background: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #333;
        }

        .container {
            width: 80%;
            margin: auto;
            text-align: center;
            background-color:rgba(255, 255, 255, 0.8);
            color:black;
            border-radius: 15px;
        
            }

        .gridview {
            margin: 20px auto;
            font-size: 1.1em;
            color:black;
            border-collapse: collapse;
            border-radius: 15px;
        }

        .gridview th {
            background-color: #f2f2f2;
            padding: 10px;
            font-size: 1.2em;
            color: black;
        background-color:rgb(0,148,255,0.7);
            }

        .gridview td {
            padding: 10px;
            font-size: 1em;
            color: black;
        }

        .gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #btnApprove {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            font-family :'Times New Roman';
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 15px;
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="UserID" HeaderText="User ID" />
                    <asp:BoundField DataField="CreationDate" HeaderText="Creation Date" />
                    <asp:BoundField DataField="ArrivalDate" HeaderText="Arrival Date" />
                    <asp:BoundField DataField="GoodsType" HeaderText="Goods Type" />
                    <asp:BoundField DataField="Length" HeaderText="Length" />
                    <asp:BoundField DataField="Width" HeaderText="Width" />
                    <asp:BoundField DataField="Height" HeaderText="Height" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" />
                    <asp:TemplateField HeaderText="Approve">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkApprove" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnApprove" runat="server" Text="Approve Selected Orders" OnClick="btnApprove_Click" />
            <br />
            <br />
            <button class="button" runat="server" OnServerClick="goBackbtn">Go Back</button>
        </div>
    </form>
</body>
</html>
