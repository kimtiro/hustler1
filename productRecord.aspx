<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productRecord.aspx.cs" Inherits="hustler1.productRecord" %>

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
        .left{
            float:right;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="main">
            <!-- navigation bar start-->
            <nav class="navbar">
              <div class="container">
                <b><a class="navbar-brand">Manage Products</a></b>
              </div>
            </nav>
             <!-- navigation bar end-->
              <!-- sidenav bar start-->
            <div class="sidenav">
                <br />
                <br />
                <br />
                <br />
              <a><asp:Button ID="ManageCustomersAdmin" runat="server" Text="Manage Customers" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="ManageCustomersAdmin_Click"  /></a>
                <br />
                <br />
                <a><asp:Button ID="ManageProductsAdmin" runat="server" Text="Manage Product" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="ManageProductsAdmin_Click"/></a>
                <br />
                <br />
              <a><asp:Button ID="ManageOrdersAdmin" runat="server" Text="Manage Orders" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="ManageOrdersAdmin_Click" /></a>
                <br />
                <br />
              <a><asp:Button ID="logout" runat="server" Text="Logout" style="margin-left: 0px" Width="137px" BackColor="DarkSalmon" BorderStyle="None" Font-Bold="True" ForeColor="PeachPuff" OnClick="logout_Click" /></a>
            </div>
             <br />
             <div class="left">
            <asp:TextBox ID="searchbox" placeholder="search"  runat="server" OnTextChanged="SearchEvent" AutoPostBack="true"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </div>
            <br />
             <br />
            <br />
            <asp:TextBox ID="productcode" placeholder="Product Code" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="prodbrand" placeholder="Brand" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="prodcategory"  placeholder="Category" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
             <br />
            <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" Width="208px" BackColor="darksalmon" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="54px"  style=" border-radius: 5px 5px;" Font-Size="Large"/>
             <br />
             <br />
           <asp:GridView ID="grid1" runat="server" EmptyDataText="Record Not Found" AutoGenerateColumns="false" Height="140px" Width="882px" ForeColor="Black" CellPadding="5" CellSpacing="-1" OnRowCancelingEdit="grid1_RowCancelingEdit" OnRowEditing="grid1_RowEditing" OnRowUpdating="grid1_RowUpdating" OnPageIndexChanging="grid1_PageIndexChanging" OnRowDeleting="grid1_RowDeleting" OnSelectedIndexChanged="grid1_SelectedIndexChanged">
               <Columns>
                   <asp:TemplateField HeaderText="Id">
                       <ItemTemplate>
                           <asp:Label ID="idlbl" runat="server" Text='<% #Eval("Id") %>' />
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Product Code">
                       <ItemTemplate>
                           <asp:Label ID="codelbl" runat="server" Text='<%# Eval("productcode") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="productcodetxt" runat="server" Text = '<%# Eval("productcode") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Brand">
                       <ItemTemplate>
                           <asp:Label ID="prodbrandlbl" runat="server" Text='<%# Eval("prodbrand") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="prodbrandtxt" runat="server" Text = '<%# Eval("prodbrand") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Category">
                       <ItemTemplate>
                           <asp:Label ID="prodcategorylbl" runat="server" Text='<%# Eval("prodcategory") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="prodcategorytxt" runat="server" Text = '<%# Eval("prodcategory") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Controls">
                       <ItemTemplate>
                           <asp:Button ID="EditButton" Text="Edit" runat="server" CommandName="Edit" BorderStyle="None" BackColor="#169EB2" ForeColor="White" Height="30" Width="65" />
                           <asp:Button ID="deleteButton" Text="Delete" runat="server" CommandName="Delete" BackColor="#D63444" ForeColor="White" BorderStyle="None"  Height="30" Width="65"/>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:Button ID="updateButton" Text="Update" runat="server" CommandName="Update" BackColor="#169EB2" ForeColor="White" BorderStyle="None"  Height="30" Width="65"/>
                           <asp:Button ID="cancelButton" Text="Cancel" runat="server" CommandName="Cancel" BackColor="#D63444" ForeColor="White" BorderStyle="None" Height="30" Width="65" />
                       </EditItemTemplate>
                   </asp:TemplateField>


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