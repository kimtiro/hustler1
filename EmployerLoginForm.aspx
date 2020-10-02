<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployerLoginForm.aspx.cs" Inherits="hustler1.EmployerLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body {
            background-image: url("images/access-bg.jpg");
            background-repeat: no-repeat;
           background-position: 70% 35%;
        }
        .labelbkg {
            width: 435px;
        }
        .loginDetails {
            width: 482px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="registerbtn" style="float:right;  box-shadow: 0px 3px 8px 0px rgba(0, 0, 0, 0.05);">
        </div>
        <div class="loginDetails" style="margin-top:7.6em; margin-left: 14em; height: 385px; padding-left: 1em;">
            <div class="labelbkg" style=" height: 25px; background-color:#246DF8; margin-bottom: 2em; padding:10px;">
                <asp:Label ID="Label1" runat="server" Text="Employer Login Form" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <asp:TextBox ID="TextBox1" placeholder="Email Address" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC"  Width="448px" Height="32px" BorderWidth="1px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC"   Width="448px" Height="32px" BorderWidth="1px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Forgot Password?" ForeColor="#666666"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#246DF8" ForeColor="White"  Width="450px" Height="53px" Font-Size="10pt" Font-Bold="True" BorderStyle="None" />
             <br />
            <br />
             <asp:Label ID="Label3" runat="server" Text="Don't have an account yet?" ForeColor="#666666"></asp:Label> <asp:Label ID="Label4" runat="server" Text=" Register" Font-Bold="True" ForeColor="#333333"></asp:Label>
        </div>
        
    </form>
    
          <div class="footer" style="margin-top: 12em; text-align:center;">
             <asp:Label ID="Label44" runat="server" ForeColor="#6F7484" Text="Kimberly Tiro ASP Assignment Landing Page 2020"></asp:Label>


        </div>
</body>
</html>
