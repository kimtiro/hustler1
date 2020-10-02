<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editUpdateDelete.aspx.cs" Inherits="hustler1.editUpdateDelete" %>

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
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div align="center">

            <nav class="navbar">
              <div class="container">
                <b><a class="navbar-brand">Kimberly Tiro</a></b>
              </div>
            </nav>
            <br />
             <br />
           <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false" Height="140px" OnRowCancelingEdit="grid1_RowCancelingEdit" OnRowEditing="grid1_RowEditing" OnRowUpdating="grid1_RowUpdating" Width="882px" OnSelectedIndexChanged="grid1_SelectedIndexChanged" ForeColor="Black" CellPadding="5" CellSpacing="-1" >
               <Columns>
      

                   <asp:TemplateField HeaderText="Id">
                       <ItemTemplate>
                           <asp:Label ID="idlbl" runat="server" Text='<% #Eval("Id") %>' />
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Username">
                       <ItemTemplate>
                           <asp:Label ID="namelbl" runat="server" Text='<%# Eval("Name") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="usernametext" runat="server" Text = '<%# Eval("Name") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="First Name">
                       <ItemTemplate>
                           <asp:Label ID="firstnamelbl" runat="server" Text='<%# Eval("Firstname") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="firstnametext" runat="server" Text = '<%# Eval("Firstname") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Last Name">
                       <ItemTemplate>
                           <asp:Label ID="lastnamelbl" runat="server" Text='<%# Eval("Lastname") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="lastnametext" runat="server" Text = '<%# Eval("Lastname") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Email Address">
                       <ItemTemplate>
                           <asp:Label ID="emailaddresslbl" runat="server" Text='<%# Eval("Emailaddress") %>' />
                       </ItemTemplate>

                       <EditItemTemplate>
                           <asp:TextBox ID="emailaddresstext" runat="server" Text = '<%# Eval("Emailaddress") %>' />
                       </EditItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Controls">
                       <ItemTemplate>
                           <asp:Button ID="EditButton" Text="Edit" runat="server" CommandName="Edit" BorderStyle="None" BackColor="#169EB2" ForeColor="White" Height="30" Width="65" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" SelectCommand="SELECT * FROM [usertable]"></asp:SqlDataSource>

       
    </form>
</body>
</html>
