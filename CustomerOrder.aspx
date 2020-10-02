<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrder.aspx.cs" Inherits="hustler1.CustomerOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style>
        body {
            font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        }
        .navbar {
             background-color: peachpuff;
             padding: 10px;
             box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.24);
        }
        .navbar-brand {
            font-size: 2em;
            color:darksalmon;
        }
        .page-footer {
               background-color: peachpuff;
               font-size: 15px;
               color:darksalmon;
               margin-top: 5em;
               padding: 10px;
               font-weight: bold;
               box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.24);
        }
        
        .sidenav {
          height: 100%;
          width: 160px;
          position: fixed;
          z-index: 1;
          top: 0;
          left: 0;
          background-color: darksalmon;
          overflow-x: hidden;
          padding-top: 20px;
        }


        .sidenav a:hover {
          color: #f1f1f1;
        }
        .main {
          margin-left: 160px; /* Same as the width of the sidenav */
          font-size: 15px; /* Increased text to enable scrolling */
          padding: 0px 10px;
        }

        .left {
            float:right;
            margin-top: 20px;

        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="main"> <!-- Main div-->
            <!-- navigation bar start-->
            <nav class="navbar">
              <div class="container">
                <b><a class="navbar-brand">Customer Order</a></b>
              </div>
            </nav>
             <!-- navigation bar end-->
             <!-- sidenav bar start-->
            <div class="sidenav">
                <br />
                <br />
                <br />
            <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="15pt" ForeColor="PeachPuff"></asp:Label>
                <br />
                <br />
                <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click"  style="margin-left: 0px" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff"/>
                <br />
                <br />
                <asp:Button ID="myorders" runat="server" Text="My Orders" OnClick="myorders_Click" style="margin-left: 0px" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff"/>
                <br />
                <br />
                <asp:Button ID="products" runat="server" Text="Product List" OnClick="products_Click" style="margin-left: 0px" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff"/>
                <br />
                <br />
                 <asp:TextBox ID="customerID" placeholder="Customer ID" runat="server" Visible="False"></asp:TextBox>
                <br />
                <br />
             
            </div>
             <!-- sidenav bar end-->

             <div class="left">  <asp:TextBox ID="searchbox" placeholder="search"  runat="server" AutoPostBack="true" Width="271px" OnTextChanged="searchbox_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click"/></div>

            <br />
            <br />
            <br />
                
             
                <div class ="right">
                <br />
                 <asp:TextBox ID="prodID" placeholder="Product ID" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="productcode" placeholder="Product Code" runat="server" Enabled="False" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="prodbrand" placeholder="Brand" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="prodcategory"  placeholder="Category" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="qty"  placeholder="Quantity" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
                <br />
                <br />
                    </div>
                  
      
           
          
            <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" Width="208px" BackColor="darksalmon" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="54px"  style=" border-radius: 5px 5px;" Font-Size="Large"/>
             <br />
             <br />
      
           <asp:GridView ID="grid1" runat="server" EmptyDataText="Record Not Found" AutoGenerateColumns="false" Height="140px" Width="882px" ForeColor="Black" CellPadding="5" CellSpacing="-1" OnSelectedIndexChanged="grid1_SelectedIndexChanged" OnPageIndexChanging="grid1_PageIndexChanging" >
               <Columns>
                 
               <asp:CommandField ShowSelectButton="True" />
               <asp:BoundField DataField="Id" HeaderText="ID" SortExpression="ID" />
               <asp:BoundField DataField="productcode" HeaderText="Product Code" SortExpression="productcode" />
               <asp:BoundField DataField="prodbrand" HeaderText="Product Brand" SortExpression="prodbrand" />
               <asp:BoundField DataField="prodcategory" HeaderText="Product Category" SortExpression="prodcategory" />


               </Columns>
           </asp:GridView>

             <!-- Footer -->
        <footer class="page-footer">
            <a>ASP MIDTERM ACTIVITY</a>
        </footer>
        <!-- Footer -->
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>

       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([prodbrand] = @prodbrand)">
            <SelectParameters>
                <asp:ControlParameter ControlID="searchbox" Name="fname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

       
    </form>
</body>
</html>