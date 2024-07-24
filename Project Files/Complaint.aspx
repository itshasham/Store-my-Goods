<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="WebApplicationFinal.Complaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
            background-size: 100% auto;
            opacity: 1;
        }

        table {
            width: 100%;
            max-width: 600px;
            margin: auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            opacity:1;
        }

        h1 {
            font-size: 36px;
            font-weight: bold;
            color: black;
            text-align: center;
            margin-top: 0;
        }

        td {
            text-align: center;
            padding: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #f5f5f5;
            margin-bottom: 10px;
            color: black;
            font-family:'Century Schoolbook';
        }

        textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #f5f5f5;
            margin-bottom: 10px;
            color: black;
           font-family:'Century Schoolbook';
        }

        button {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #4CAF50;
            color: white;
          font-family:'Times New Roman';
            cursor: pointer;
        }
        .submitButton {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: none;
    background-color: #4CAF50;
    color: white;
    font-family: 'Times New Roman';
    cursor: pointer;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td colspan="2"><h1>Customer Complaint Center</h1></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Problem Details</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit Complaint" OnClick="Btclick" CssClass="submitButton" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
