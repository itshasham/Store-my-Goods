<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRent.aspx.cs" Inherits="WebApplicationFinal.ViewRent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rental Charges</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            font-family: Arial, sans-serif;
        }

        h1 {
            color: #31505e;
            text-align: center;
        }

        .container {
            max-width: 780px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            position: relative;
            z-index: 1;
        }

        .table-header {
            background-color: #31505e;
            color: #ffffff;
            padding: 10px;
            margin-top: 20px;
        }

        table {

            margin: 5px;
            border-collapse: collapse;
            width: 100%;
            margin: 5px;
        }

       th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ffffff;
            border-right: 1px solid #ffffff;
            border-left: 1px solid #ffffff;
        }

        th {
            border-top: 1px solid #ffffff;
        }
        .button-container {
            margin-top: 20px;
            text-align: center;
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
            <h1>Rental Charges</h1>
            <div class="table-header">Rental Charge Info</div>
            <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
            <div class="button-container">
                <button class="button" runat="server" OnServerClick="goBackbtn">Go Back</button>
            </div>
        </div>
    </form>
</body>
</html>
