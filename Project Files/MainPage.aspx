<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="WebApplicationFinal.MainPage" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <meta charset="UTF-8">
  <title>IHEA LOGISTICS </title>
   <style>
    /* reset default styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    
    /* body styles */
    body {
      font-family: Arial, sans-serif;
      background-color: #F7F7F7;
      color: #444;
      line-height: 1.5;
    }
    
    /* header styles */
    header {
      background-color: #0F4C75;
      color: #FFF;
      padding: 1rem;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    
    nav ul {
      display: flex;
      list-style: none;
      justify-content: space-around;
      margin-top: 1rem;
    }
    
    nav ul li {
      margin: 0 1rem;
    }
    
    nav ul li a {
      color: #FFF;
      text-decoration: none;
      text-transform: uppercase;
      font-weight: bold;
      font-size: 0.9rem;
      transition: all 0.3s ease-in-out;
    }
    
    nav ul li a:hover {
      color: #FFD700;
    }
    
    h1 {
      margin-top: 1rem;
      font-size: 3rem;
      text-align: center;
      text-transform: uppercase;
    }
    
    h2 {
      margin-top: 0.5rem;
      font-size: 1.5rem;
      text-align: center;
      text-transform: uppercase;
      font-weight: normal;
    }
    
    /* main styles */
    main {
      max-width: 960px;
      margin: 0 auto;
      padding: 2rem 1rem;
    }
    
    section {
      margin-bottom: 2rem;
    }
    
    h3 {
      font-size: 1.5rem;
      text-transform: uppercase;
      margin-bottom: 1rem;
    }
    
    ul {
      list-style: disc;
      margin-left: 1.5rem;
    }
    
    li {
      margin-bottom: 0.5rem;
    }
    
    p {
      margin-bottom: 1rem;
    }
    
    /* footer styles */
    footer {
      background-color: #0F4C75;
      color: #FFF;
      padding: 1rem;
      text-align: center;
    }
    
    footer p {
      font-size: 0.9rem;
      margin: 0;
    }
  </style>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <form id="form1" runat="server">
    <header>
      <nav>
        <ul>
          <li><a href="MainPage.aspx">Home</a></li>
          <li><a href="Login.aspx">Log In</a></li>
          <li><a href="SignUP.aspx">Sign Up</a></li>
        </ul>
      </nav>
      <h1>IHEA LOGISTICS</h1>
      <h2>Warehouse Management Services</h2>
    </header>
    
    <main>
      <section>
        <h3>Our Services</h3>
        <ul>
          <li>Inventory Management</li>
          <li>Order Fulfillment</li>
          <li>Warehouse Design and Layout</li>
          <li>Shipping and Receiving</li>
          <li>Custom Packaging and Crating</li>
        </ul>
      </section>
      
      <section>
        <h3>About Us</h3>
        <p>IHEA LOGISTICS is a leading provider of warehouse management services, offering customized solutions to meet the unique needs of our clients. Our team of experts has years of experience in the industry and is dedicated to delivering exceptional service and results.</p>
      </section>
      
      <section>
        <h3>Contact Us</h3>
        <p>Phone: 0308-0502816<br>
          Email: info@ihealogistics.com<br>
          Address: Office no 602 6TH Floor Al-Hafeez Heights,Gulberg-III Lahore</p>
      </section>
    </main>
    
    <footer>
      <p>&copy; 2023 IHEA LOGISTICS. All Rights Reserved.</p>
    </footer>
  </form>
</body>
</html>
