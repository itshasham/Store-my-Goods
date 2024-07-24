<%@ Page Title="View Payment Record" Language="C#" AutoEventWireup="true" CodeBehind="PaymentRecord.aspx.cs" Inherits="PaymentRecord.ViewRecord" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Payment Record</title>
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
            max-width: 800px;
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

        /* New GridView styles */
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
            <h1>Payment Records:</h1>
            <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True">
            </asp:GridView>
            <button class="button" runat="server" OnServerClick="goBackbtn">Go Back</button>
        </div>
     </form>
</body>
</html>
