<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customermanageorders.aspx.cs" Inherits="hustler1.customermanageorders" %>

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
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="main">

            <nav class="navbar">
              <div class="container">
                <b><a class="navbar-brand">My Orders</a></b>
              </div>
            </nav>

  <!-- sidenav bar start-->
            <div class="sidenav">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
              <a><asp:Button ID="Button5" runat="server" Text="My Orders" style="margin-left: 0px" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="Button5_Click"/></a>
                <br />
                <br />
                <a><asp:Button ID="Button1" runat="server" Text="Product List" style="margin-left: 0px" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="Button1_Click" /></a>
                <br />
                <br />
              <a><asp:Button ID="Button6" runat="server" Text="Logout" style="margin-left: 0px; height: 25px;" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="Button6_Click" /></a>
            </div>
             <!-- sidenav bar end-->
            <br />
         
             <br />
             <br />
      
             <asp:TextBox ID="customerID" placeholder="ID" runat="server" Visible="False"></asp:TextBox>
            <br />
        <div align="center">
           <asp:GridView ID="grid1" runat="server" EmptyDataText="Record Not Found" AutoGenerateColumns="false" Height="113px" Width="1016px" ForeColor="Black" CellPadding="5" CellSpacing="-1"  OnRowCancelingEdit="grid1_RowCancelingEdit" OnRowEditing="grid1_RowEditing" OnRowUpdating="grid1_RowUpdating" OnRowDeleting="grid1_RowDeleting" >
               <Columns>
                 <asp:TemplateField HeaderText="Order ID">
                      <ItemTemplate>
                           <asp:Label ID="idlbl" runat="server" Text='<% #Eval("or_id") %>' />
                      </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Order Date">
                       <ItemTemplate>
                           <asp:Label ID="orderdatelbl" runat="server" Text='<%# Eval("or_date") %>' />
                       </ItemTemplate>
                        <EditItemTemplate>
                           <asp:Label ID="orderdatelbl" runat="server" Text='<%# Eval("or_date") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                  
                   <asp:TemplateField HeaderText="Product">
                       <ItemTemplate>
                           <asp:Label ID="product" runat="server" Text='<%# Eval("productID") %>' />
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:Label ID="product" runat="server" Text='<%# Eval("productID") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Quantity">
                       <ItemTemplate>
                           <asp:Label ID="qty" runat="server" Text='<%# Eval("qty") %>' />
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox ID="qty" runat="server" Text='<%# Eval("qty") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Controls">
                       <ItemTemplate>
                           <asp:Button ID="EditButton" Text="Edit" runat="server" CommandName="Edit" BorderStyle="None" BackColor="#169EB2" ForeColor="White" Height="30" Width="65" />
                          <asp:Button ID="deleteButton" Text="Cancel" runat="server" CommandName="Delete" BackColor="#D63444" ForeColor="White" BorderStyle="None"  Height="30" Width="65"/>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:Button ID="updateButton" Text="Update" runat="server" CommandName="Update" BackColor="#169EB2" ForeColor="White" BorderStyle="None"  Height="30" Width="65"/>
                           <asp:Button ID="cancelButton" Text="Cancel" runat="server" CommandName="Cancel" BackColor="#D63444" ForeColor="White" BorderStyle="None" Height="30" Width="65" />
                       </EditItemTemplate>
                   </asp:TemplateField>



               </Columns>
               <SelectedRowStyle BorderColor="PeachPuff" ForeColor="DarkSalmon" />
           </asp:GridView>
            </div>
             <!-- Footer -->
        <footer class="page-footer">
            <a>ASP MIDTERM ACTIVITY</a>
        </footer>
        <!-- Footer -->
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [customerorders]"></asp:SqlDataSource>

  
        
       
    </form>
</body>
</html>