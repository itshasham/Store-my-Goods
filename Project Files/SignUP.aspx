<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUP.aspx.cs" Inherits="WebApplicationFinal.SignUP" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>IHEA LOGISTICS - Sign Up</title>
    <style>
        /* Global styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  color: #333;
  background-color: #f7f7f7;
}

header {
  background-color: #0F4C75;
  color: #fff;
padding: 10px;
  text-align: center;
}


h1,h2 {
  margin: 0;
}

main {
  max-width: 600px;
  margin: 20px auto;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ddd;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-bottom: 5px;
  font-weight: bold;
}

input, select {
  padding: 8px 12px;
  margin-bottom: 15px;
  border: 1px solid #ddd;
  border-radius: 4px;
}

input:focus, select:focus {
  outline: none;
  border-color: #3a3d48;
}

button[type="submit"] {
  padding: 10px 20px;
  margin-top: 20px;
  border: none;
  border-radius: 4px;
  color: #fff;
  background-color: #3a3d48;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #23262d;
}

button[type="submit"]:disabled {
  opacity: 0.5;
  cursor: default;
}

button[type="submit"]:disabled:hover {
  background-color: #3a3d48;
}

footer {
  background-color: #3a3d48;
  color: #fff;
  padding: 10px;
  text-align: center;
}

/* Custom styles */
header h1 {
  font-size: 36px;
  text-transform: uppercase;
}

header h2 {
  font-size: 24px;
  margin-bottom: 20px;
}

label[for="username"], label[for="password"], label[for="phoneno"] {
  color: #3a3d48;
}

button[type="submit"] {
  background-color: #376969;
}

button[type="submit"]:hover {
  background-color: #23262d;
}

button[type="submit"]:disabled {
  background-color: #9b9b9b;
}

button[type="submit"]:disabled:hover {
  background-color: #9b9b9b;
}

input[type="date"]::-webkit-inner-spin-button,
input[type="date"]::-webkit-calendar-picker-indicator {
  display: none;
}
    </style>
</head>
<body>
    <header>
        <h1>IHEA LOGISTICS</h1>
        <h2>Sign Up</h2>
        <h3>Already have an account? <a href="login.aspx">Log in</a></h3>
    </header>
    <main>
        <form id="signUpForm" runat="server">
            <asp:Label ID="usernameLabel" runat="server" Text="Username:" AssociatedControlID="username" />
            <asp:TextBox ID="username" runat="server" /><br />

            <asp:Label ID="firstnameLabel" runat="server" Text="First Name:" AssociatedControlID="firstname" />
            <asp:TextBox ID="firstname" runat="server" /><br />

            <asp:Label ID="lastnameLabel" runat="server" Text="Last Name:" AssociatedControlID="lastname" />
            <asp:TextBox ID="lastname" runat="server" /><br />

            <asp:Label ID="passwordLabel" runat="server" Text="Password:" AssociatedControlID="password" />
            <asp:TextBox ID="password" runat="server" TextMode="Password" /><br />

            <asp:Label ID="cnicLabel" runat="server" Text="CNIC:" AssociatedControlID="cnic" />
            <asp:TextBox ID="cnic" runat="server" /><br />

            <asp:Label ID="categoryLabel" runat="server" Text="Category:" AssociatedControlID="category" />
            <asp:DropDownList ID="category" runat="server">
                <asp:ListItem Text="Select Category" Value="" />
                <asp:ListItem Text="User" Value=2 />
            </asp:DropDownList><br />

            <asp:Label ID="birthdateLabel" runat="server" Text="Birth Date:" AssociatedControlID="birthdate" />
            <asp:TextBox ID="birthdate" runat="server" TextMode="Date" /><br />

            <asp:Label ID="phonenoLabel" runat="server" Text="Phone Number:" AssociatedControlID="phoneno" />
            <asp:TextBox ID="phoneno" runat="server" /><br />

            <asp:Label ID="citynameLabel" runat="server" Text="City Name:" AssociatedControlID="cityname" />
            <asp:TextBox ID="cityname" runat="server" /><br />

            <asp:Button ID="signUpButton" runat="server" Text="Sign Up" OnClick="signUpButton_Click" />
        </form>
    </main>
    <footer>
        <p>&copy; 2023 IHEA LOGISTICS. All Rights Reserved.</p>
    </footer>
</body>
</html>
