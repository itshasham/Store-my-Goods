<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplaintPlaced.aspx.cs" Inherits="WebApplicationFinal.ComplaintPlaced" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Complaint Center</title>
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Times New Roman';
        }
        
        .content {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
        }

        h1 {
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 20px;
             font-family: 'Times New Roman';
             color : red ;
        }
    </style>
    <script>
        window.onload = function() {
            setTimeout(function() {
                window.location.href = "Menu.aspx";
            }, 3000);
        };
    </script>
</head>
<body>
    <div class="content">
        <form id="form1" runat="server">
            <div>
            </div>
        </form>
        <h1>Your Complaint Is Registered.</h1>
    </div>
</body>
</html>
