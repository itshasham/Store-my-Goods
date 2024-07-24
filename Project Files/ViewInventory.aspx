<%@ Page Title="Check Inventory Details" Language="C#" AutoEventWireup="true" CodeBehind="ViewInventory.aspx.cs" Inherits="WebApplicationFinal.ViewInventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>View Inventory</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
    width: 80%;
    max-width: 1200px;
    margin: 100px auto;
    padding: 40px;
    background-color: #ffffff;
    position: relative;
    z-index: 1;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-left: auto;
    margin-right: auto;
}
        h1 {
            color: #31505e;
            text-align: center;
            margin-bottom: 20px;
        }

        .input-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .input-container input[type="text"] {
            width: 200px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-submit {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #31505e;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #1a2d35;
        }

        .inventory-heading {
            color: #31505e;
            text-align: center;
            margin-bottom: 20px;
        }

        .gridview-container {
            max-width: 796px;
            margin: 0 auto;
        }

        .gridview-container table {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview-container th,
        .gridview-container td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ccc;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="inventory-heading">Inventory Details are as follows:</h1>
            <div>
                <asp:Label ID="UserIDLabel" runat="server"></asp:Label>
            </div>
            <div class="gridview-container">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
