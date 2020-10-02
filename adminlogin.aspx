<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="hustler1.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>

        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        </style>
</head>
<body style="background-color:peachpuff;">
    <nav class="navbar navbar-expand-sm bg-light" style="padding: .5em;">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a style="color: #89C06A;"><b>Kimberly Tiro<b></a>
    </li>
  </ul>
</nav>
    <div align="center">
    <form id="form1" runat="server" style="background-image: url('ombre.jpg'); background-repeat:no-repeat;">
        <div style="background-color:#ffffff; padding: 20px; height: 533px; width: 405px; box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.24); margin-top:5em;  border-radius: 5px 5px;">

            &nbsp;&nbsp;&nbsp;

            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="X-Large" Text="Login"></asp:Label>
            <br />
            <br />

            <asp:TextBox ID="username" runat="server" placeholder=" Username" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px" style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br>
            <asp:TextBox ID="password" runat="server" placeholder=" Password" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br>
           
            <asp:Button ID="loginbtn" runat="server" Text="Sign Up" Width="321px" BackColor="darksalmon" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="54px"  style=" border-radius: 5px 5px;" Font-Size="Large" OnClick="btn1_Click" />

            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Invalid Data"></asp:Label>
            <br />
            <br />
            <b>
            <asp:TextBox ID="userID" runat="server" placeholder=" Password" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2" Visible="False"></asp:TextBox>
            
        </div>
    </form>
        </div>
</body>
</html>


