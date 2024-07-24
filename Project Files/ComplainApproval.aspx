<%@ Page Title="Complain Approval" Language="C#" AutoEventWireup="true" CodeBehind="ComplainApproval.aspx.cs" Inherits="ComplainApproval.ComplainApproval" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Complaint Approval</title>
    <style>
        body {
            background: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg') no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: rgba(255,255,255,0.8);
            padding: 20px;
            border-radius: 5px;
            width: 80%;
            margin: auto;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.15);
        }
        #GridView1 {
            width: 100%;
            margin: auto;
        }
        #btnUpdateStatus {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 10px;
            font-size: 16px;
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" Visible='<%# Eval("Status").ToString() != "Accepted" %>' />
                        <asp:Label ID="lblAccepted" runat="server" Text="Accepted" Visible='<%# Eval("Status").ToString() == "Accepted" %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ComplaintID" HeaderText="Complaint ID" />
                <asp:BoundField DataField="UserID" HeaderText="User ID" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
            </asp:GridView>
            <asp:Button ID="btnUpdateStatus" runat="server" Text="Update Selected Status" OnClick="btnUpdateStatus_Click" />
            <button class="button" runat="server" OnServerClick="goBackbtn">Go Back</button>
            
        </div>
    </form>
</body>
</html>
