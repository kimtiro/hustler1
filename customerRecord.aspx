<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerRecord.aspx.cs" Inherits="hustler1.customerRecord" %>

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
            float: right;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="main">
            <!-- navigation bar start-->
            <nav class="navbar">
              <div class="container">
                <b><a class="navbar-brand">Manage Customers</a></b>
              </div>
            </nav>
             <!-- navigation bar end-->
              <!-- sidenav bar start-->
            <div class="sidenav">
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
             <!-- sidenav bar end-->
            <br />
            <div class="left">
            <asp:TextBox ID="searchbox" placeholder="search"  runat="server" OnTextChanged="SearchEvent" AutoPostBack="true" Width="250px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
           </div>
            <br />
            <br />
            <asp:TextBox ID="username" placeholder="Username" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="firstname" placeholder="First Name" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="lastname"  placeholder="Last Name" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="emailaddd"  placeholder="Email Address" runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="pword" placeholder="Password"  runat="server" BorderStyle="Solid" BorderColor="#CCCCCC" BorderWidth="1px" Height="31px" Width="314px"  style=" border-radius: 2px 2px;" BackColor="#F2F2F2"></asp:TextBox>
            <br />
            <br />
            <br />
             <br />
            <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" Width="208px" BackColor="darksalmon" BorderColor="White" BorderStyle="Solid" ForeColor="White" Height="54px"  style=" border-radius: 5px 5px;" Font-Size="Large"/>
             <br />
             <br />
           <asp:GridView ID="grid1" runat="server" EmptyDataText="Record Not Found" AutoGenerateColumns="false" Height="140px" Width="882px" ForeColor="Black" CellPadding="5" CellSpacing="-1" OnRowEditing="grid1_RowEditing" OnRowUpdating="grid1_RowUpdating" OnRowDeleting="grid1_RowDeleting" OnPageIndexChanging="grid1_PageIndexChanging" OnRowCancelingEdit="grid1_RowCancelingEdit" >
               <Columns>
                   <asp:TemplateField HeaderText="Id">
                       <ItemTemplate>
                           <asp:Label ID="idlbl" runat="server" Text='<% #Eval("Id") %>' />
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Username">
                       <ItemTemplate>
                           <asp:Label ID="namelbl" runat="server" Text='<%# Eval("uname") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="usernametext" runat="server" Text = '<%# Eval("uname") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="First Name">
                       <ItemTemplate>
                           <asp:Label ID="firstnamelbl" runat="server" Text='<%# Eval("fname") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="firstnametext" runat="server" Text = '<%# Eval("fname") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Last Name">
                       <ItemTemplate>
                           <asp:Label ID="lastnamelbl" runat="server" Text='<%# Eval("lname") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="lastnametext" runat="server" Text = '<%# Eval("lname") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Email Address">
                       <ItemTemplate>
                           <asp:Label ID="emailaddresslbl" runat="server" Text='<%# Eval("emailadd") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="emailaddresstext" runat="server" Text = '<%# Eval("emailadd") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Password">
                       <ItemTemplate>
                           <asp:Label ID="passwordlbl" runat="server" Text='<%# Eval("pword") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="passwordtext" runat="server" Text = '<%# Eval("pword") %>' />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [customers]"></asp:SqlDataSource>

       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [customers] WHERE ([fname] = @fname)">
            <SelectParameters>
                <asp:ControlParameter ControlID="searchbox" Name="fname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

       
    </form>
</body>
</html>