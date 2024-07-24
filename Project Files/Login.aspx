<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationFinal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
        background-color: #f4f4f4;
        font-family: Arial, sans-serif;
      }
        .login-form {
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        max-width: 400px;
        margin: 0 auto;
        margin-top: 50px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
      }
        h2 {
        text-align: center;
        font-size: 2.5rem;
        color: #0077be;
        margin-top: 0;
        text-shadow: 2px 2px #f4f4f4;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-form">
            <h2>Login Form</h2>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:Button CssClass="btnSignUp" ID="btnSignUP" runat="server" Text="SignUp" OnClick="btnSign_UP" />
        </div>
    </form>
</body>
</html>