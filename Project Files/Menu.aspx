<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApplicationFinal.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Menu</title>
   <style>
		body {
			background-color: #e4eaf0;
			color: #020e18;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		
		h1 {
			color: #000000;
			font-weight: bold;
			text-align: center;
			margin-top: 100px;
			font-size: 40px;
		}
		
		.container {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 50px;
		}
		
		.btn {
			background-color: #ffffff;
			color: #d9edefd1;
			border: none;
			border-radius: 5px;
			padding: 10px 20px;
			margin: 20px;
			cursor: pointer;
			font-size: 20px;
			transition: all 0.3s ease;
		}
		
		.btn:hover {
			background-color: #149da7;
		}
		
		.btn:focus {
			outline: none;
		}
		
		.inbound {
			background-color: #042c4a;
		}
		
		.outbound {
			background-color: #143756;
		}
		
		.package {
			background-color: #143756;
		}
		
		.inbound:hover, .outbound:hover, .package:hover {
			transform: translateY(-5px);
		}
		
		.inbound:active, .outbound:active, .package:active {
			transform: translateY(5px);
		}
		
		.header {
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 20px;
			background-color: #0F4C75;
			box-shadow: 0px 0px 10px rgba(4, 13, 44, 0.3);
			position: fixed;
			top: 0;
			left: 0;
			right: 0;
			z-index: 999;
		}
		
		.logo {
			font-size: 30px;
			font-weight: bold;
			color: #ffffff;
		}
		
		.navbar {
			display: flex;
			align-items: center;
		}
		
		.navbar a {
			color: #ffffff;
			text-decoration: none;
			font-size: 20px;
			margin-left: 20px;
			transition: all 0.3s ease;
		}
		
		.navbar a:hover {
			color: #b3e5fc;
		}
		
		.active {
			color: #000406;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="logo">IHEA</div>
            <nav class="navbar">
                <asp:HyperLink ID="homeLink" runat="server" NavigateUrl="~/MainPage.aspx" CssClass="active">Home</asp:HyperLink>
            </nav>
        </header>

        <h1>User Menu</h1>

        <div class="container">
			<asp:Button ID="viewCharges" runat="server" CssClass="btn inbound" Text="View Charges" OnClick="viewChargesBtn_Click" />
            <asp:Button ID="viewInventoryBtn" runat="server" CssClass="btn inbound" Text="View Inventory" OnClick="viewInventoryBtn_Click" />
            <asp:Button ID="InboundOrderBtn" runat="server" CssClass="btn inbound" Text="Inbound Order Request" OnClick="InboundBtn_Click" />
            <asp:Button ID="OutboundOrderBtn" runat="server" CssClass="btn inbound" Text="Outbound Order" OnClick="OutboundBtn_Click"/>
			<asp:Button ID="myCompBtn" runat="server" CssClass="btn inbound" Text="Complaint Center" OnClick="Comp_Click"/>
        </div>
    </form>
</body>
</html>
