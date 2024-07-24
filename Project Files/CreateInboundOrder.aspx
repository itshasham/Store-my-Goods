<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateInboundOrder.aspx.cs" Inherits="WebApplicationFinal.CreateInboundOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Inbound Order</title>
    <style type="text/css">
        body {
            background-image: url('https://images.pexels.com/photos/209251/pexels-photo-209251.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 60%;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
        }
        table {
            width: 100%;
        }
        td {
            padding: 5px;
        }
        .center {
            text-align: center;
        }
        .header {
            font-size: 24px;
            font-weight: bold;
            padding-bottom: 20px;
        }
        input[type="text"] {
            width: 100%;
        }
        .dimension-input {
            width: 32%;
            margin-right: 1%;
        }
        .dimension-input:last-child {
            margin-right: 0;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 2px;
            cursor: pointer;
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <td class="center header" colspan="2">Create an Inbound Order</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Arrival Date</td>
                    <td>
                          <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Goods Type</td>
                    <td>
                           <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Business</asp:ListItem>
                        <asp:ListItem Value="2">Personal</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Dimensions</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="dimension-input" placeholder="Length"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="dimension-input" placeholder="Width"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="dimension-input" placeholder="Height"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Expiry Date</td>
                    <td>
                         <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        

  </asp:Calendar>
    </td>
</tr>
<tr>
    <td>Quantity</td>
    <td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Submit Request" OnClick="SubmitButton_Click" CssClass="submit-btn" />
    </td>
</tr>

                           </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>

