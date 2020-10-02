<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="hustler1.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
          /*background-color: red;*/  
            background-image: url("images/banner-1-bg.jpg");
           /*  background-position: 20% 20%;*/
            background-repeat: no-repeat;
               background-color:#F7F9FC;
        }
        a {
            color: white;
            margin-left: 1em;
            margin-right: 1em;
            font-size: 19px;
            font-family: Poppins, sans-serif;
            text-decoration: none;
        }
        .top {
            height: 574px;
            width: 1084px;
            margin-left: 179px;
        }
        nav{
            margin-top: 1.5em;
        }
        .container {
            height: 301px;
            width: 77%;
            background-color: #FFFFFF;
            margin: 0 auto;
            box-shadow: 0px 3px 8px 0px rgba(0, 0, 0, 0.05);
        }
        .parentContainer{
            background-color:#F7F9FC;
            margin-top: 0px;
        }
        .AreYou {
            height: 496px;
        }
        .newsletter {
            height: 368px;
        }
        .textleft {
            width: 501px;
            height: 213px;
            margin-left: 236px;
            margin-top: 55px;
        }
        #Text1 {
            height: 41px;
            width: 179px;
        }
        .dropdown {
    float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  float: right;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.labelBlue {
    background-color: #246DF8; 
    padding: 2em;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-light bg-light" >
      <b><a class="navbar-brand"  href="#" style="float: left; font-size: 30px; width: 151px; height: 34px;">HUSTLER</a>&nbsp;&nbsp;&nbsp; </b>
         
        <asp:Button ID="Button1" runat="server" Text="Post a Job" style="float:right; margin-left: 1em; margin-right: 1em; padding: 5px;" BorderStyle="None" ForeColor="#2D80F8" Font-Bold="True" Font-Size="10pt" Height="47px" Width="209px" />
           <div class="dropdown" style="float: right;">
            <button class="dropbtn" href="#">Home
              <i class="fa fa-caret-down"></i>
            </button>
           
          </div>  
         <div class="dropdown" style="float: right;">
            <button class="dropbtn">Jobs
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#">Link 1</a>
              <a href="#">Link 2</a>
              <a href="#">Link 3</a>
            </div>
          </div> 
          <div class="dropdown" style="float: right;">
            <button class="dropbtn">Freelancer
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a runat="server" href="~/FreelancerRegistrationPage">Freelancer</a>
              <a href="#">Employer</a>
            </div>
          </div> 
          <div class="dropdown" style="float: right;">
            <button class="dropbtn">Employer
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#">Freelancer</a>
              <a href="#">Employer</a>
            </div>
          </div> 
            </nav>

        <div class ="top">
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br
              <br>
              <asp:Label ID="Label1" runat="server" Text="58,246 Job Listed" Font-Bold="True" Font-Size="30pt" ForeColor="White" Height="0px"></asp:Label>
              <br>
              <br>
              <br>
              <asp:Label ID="Label2" runat="server" Text="Create free account to find thousands Jobs, Employment &amp; Career Opportunities around you!" Font-Size="15pt" ForeColor="White" Width="50%"></asp:Label>
              <br>
              <br>
              <br>
              <asp:Button ID="Button2" runat="server" Text="Upload Resume" BackColor="#4785FB" BorderStyle="None" Font-Bold="True" Font-Size="10pt" ForeColor="White" Width="46%" style="padding: 5px; margin-top: 0px;" Height="47px"/>
              <br />
              <br />
            <asp:Button ID="Button6" runat="server" Text="Log in as Freelancer" style=" margin-left: 1em; margin-right: 1em; padding: 5px;" BorderStyle="None" ForeColor="White" Font-Bold="True" Font-Size="10pt" Height="47px" Width="209px" OnClick="Button6_Click" BackColor="#348CFA" />
        <asp:Button ID="Button7" runat="server" Text="Log in as Employer" style=" margin-left: 1em; margin-right: 1em; padding: 5px;" BorderStyle="None" ForeColor="White" Font-Bold="True" Font-Size="10pt" Height="47px" Width="209px" OnClick="Button7_Click" BackColor="#2E81F9" />
                   <br> <br>    <asp:Button ID="Button8" runat="server" Text="Register as Freelancer" style=" margin-left: 1em; margin-right: 1em; padding: 5px;" BorderStyle="None" ForeColor="White" Font-Bold="True" Font-Size="10pt" Height="47px" Width="209px" OnClick="Button8_Click" BackColor="#348CFA" />
        <asp:Button ID="Button9" runat="server" Text="Register as Employer" style=" margin-left: 1em; margin-right: 1em; padding: 5px;" BorderStyle="None" ForeColor="White" Font-Bold="True" Font-Size="10pt" Height="47px" Width="209px" OnClick="Button9_Click" BackColor="#2E81F9" />
        </div>
          <div class="container">
                <br>
                <div align="center" style="margin-top:1em;"><asp:Label ID="Label3" runat="server" Text="JOB CATEGORY" ForeColor="#6F7484"></asp:Label></div>
                <asp:Table ID="JoBCategoryTable" runat="server" HorizontalAlign="Center" BorderStyle="None" CellSpacing="8" Height="142px" Width="949px" CellPadding="8" style="margin-top: 1em;" ForeColor="#6F7484">
                    <asp:TableRow ID="row1" runat="server" >
                        <asp:TableCell runat="server">Accounting / Finance (233)</asp:TableCell>
                        <asp:TableCell runat="server">Education (46)</asp:TableCell>
                        <asp:TableCell runat="server">Design & Creative (156)</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="row2" runat="server">
                        <asp:TableCell runat="server">Health Care (98)</asp:TableCell>
                        <asp:TableCell runat="server">Engineer & Architects (188)</asp:TableCell>
                        <asp:TableCell runat="server">Marketing & Sales (124)</asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow ID="row3" runat="server">
                        <asp:TableCell runat="server">Garments / Textile (584)</asp:TableCell>
                        <asp:TableCell runat="server">Customer Support (233)</asp:TableCell>
                        <asp:TableCell runat="server">Digital Media (15)</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                

                

                

            </div>
        <div class="parentContainer">
          
            <asp:Panel ID="Panel2" runat="server" Height="116px">
                </asp:Panel>
            <div align="center">
            <div class="recentAndfeaturedJobs" style="margin-top: 2em;">
                <asp:Button ID="Button3" runat="server" Text="RECENT JOB" style="margin-left: 1em; margin-right:2em; padding: 5px; padding-top: 2px;" BorderColor="#515666" BorderStyle="Double" ForeColor="#515666" Height="57px" BackColor="#F7F9FC" Width="205px" BorderWidth="2px" />
                <asp:Button ID="Button4" runat="server" Text="FEATURE JOB" style="margin-left: 2em; margin-right:1em; padding: 5px; padding-top: 2px; " BorderColor="#515666" BorderStyle="Double" ForeColor="#515666" Height="57px" BackColor="#F7F9FC" Width="206px" BorderWidth="2px" />
                <br>
                <br>
                <br>
                <div class="TableJob">
                   <div class="jobFloatLeft" style="float:left; width: 717px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" /> 
                        <asp:Label ID="Label4" runat="server" Text="Nutrition Advisor"></asp:Label>
                        <br />
                        <br> 
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label5" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label6" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label7" runat="server" Text=" Nutrition Advisor"></asp:Label>
                    </div>

                     <div class="jobFloatRight style="float:right;">
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" /> 
                        <asp:Label ID="Label17" runat="server" Text="Nutrition Advisor"></asp:Label>
                        <br />
                        <br> 
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label18" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image15" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label19" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image16" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label20" runat="server" Text=" Nutrition Advisor"></asp:Label>
                    </div>

                </div>
                   
            </div>
          </div>
            <div align="center">
            <div class="recentAndfeaturedJobs" style="margin-top: 2em;">
               
                <div class="labelBlue">
                <asp:Label ID="Label12" runat="server" Text="TOP COMPANIES" Font-Bold="True" Font-Size="15pt" ForeColor="White"></asp:Label>
                </div>
                <br>
                <br>
                <br>
                <div class="TableJob">
                    <div class="jobFloatLeft" style="float:left; width: 717px;">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" /> 
                        <asp:Label ID="Label8" runat="server" Text="Nutrition Advisor"></asp:Label>
                        <br />
                        <br> 
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label9" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label10" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label11" runat="server" Text=" Nutrition Advisor"></asp:Label>
                    </div>
                     <div class="jobFloatRight style="float:right;">
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" /> 
                        <asp:Label ID="Label13" runat="server" Text="Nutrition Advisor"></asp:Label>
                        <br />
                        <br> 
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label14" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label15" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label16" runat="server" Text=" Nutrition Advisor"></asp:Label>
                    </div>
                </div>
                   
            </div>
          </div>

             <div align="center">
            <div class="recentAndfeaturedJobs" style="margin-top: 2em;">
               <div class="labelBlue">
                <asp:Label ID="Label21" runat="server" Text="TOP FREELANCERS" Font-Bold="True" Font-Size="15pt" ForeColor="White"></asp:Label>
               </div>
                <br>
                <br>
                <br>
                <div class="TableJob">
                    <div class="jobFloatLeft" style="float:left; width: 717px; height: 318px;">
                        <asp:Image ID="Image17" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" /> 
                        <asp:Label ID="Label22" runat="server" Text="Nutrition Advisor"></asp:Label>
                        <br />
                        <br> 
                        <asp:Image ID="Image18" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label23" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image19" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label24" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image20" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label25" runat="server" Text=" Nutrition Advisor"></asp:Label>
                    </div>
                     <div class="jobFloatRight style="float:right;">
                        <asp:Image ID="Image21" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" /> 
                        <asp:Label ID="Label26" runat="server" Text="Nutrition Advisor"></asp:Label>
                        <br />
                        <br> 
                        <asp:Image ID="Image22" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label27" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image23" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label28" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br> 
                        <asp:Image ID="Image24" runat="server" ImageUrl="~/images/company-logo-1.png" ImageAlign="AbsMiddle" />
                        <asp:Label ID="Label29" runat="server" Text=" Nutrition Advisor"></asp:Label>
                         <br />
                         <br />
                         <br />
                    </div>
                </div>
                   
            </div>
          </div>
            <br>
            
            <div class="newsletter" style="background-color: #246DF8;">
                <asp:Image ID="Image27" runat="server" ImageUrl="~/images/newsletter-bg.jpg" style="float:right; margin-right: 5em;" Height="362px" Width="616px"/>
              &nbsp;&nbsp;&nbsp;
                        <div class="textleft" style="margin-left: 11.4em;">
                           <asp:Label ID="Label30" runat="server" ForeColor="White" Text="Newsletter" Font-Bold="True" Font-Size="25pt"></asp:Label>
                            <br>
                            <br>
                           <asp:Label ID="Label31" runat="server" ForeColor="White" Text="Get e-mail updates about our latest news and Special offers. We don’t send spam so don’t worry." Font-Size="11pt"></asp:Label>
                           <br>
                            <br>
                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="176px" placeholder="Enter Email" BorderStyle="Solid" BorderColor="#336699" BackColor="White" ForeColor="White" BorderWidth="1px"></asp:TextBox>
                            <asp:Button ID="Button5" runat="server" Text="Submit &gt;" Height="44px" Width="161px" style="margin-left: 1em;" BackColor="#246DF8" BorderColor="White" BorderStyle="Solid" ForeColor="White" BorderWidth="1px"/>

                         </div>
                
                            

         
                
                
                            

         
              </div>
              
              <div class="AreYou" style="margin-top: 4.2em; margin-left:1em; margin-right: 1em; width: 1418px; padding: 3px;">
                <div align="center" style="height: 0px">
                    
                  <div class ="imgRight" style="float: right; margin-right: 10em; background-color:#EEF4FF; border-radius: 5px; border: cadetblue; height: 453px; width: 524px;  box-shadow: 0px 3px 8px 0px rgba(0, 0, 0, 0.05);">
                       <asp:Image ID="Image25" runat="server" Height="276px"  ImageUrl="~/images/2.png" Width="269px"/>
                       <br />
                       <br />
                       <asp:Label ID="Label38" runat="server" Text="ARE YOU AN" Font-Size="10pt" ForeColor="#6E7383"></asp:Label>
                       <br />
                       <asp:Label ID="Label32" runat="server" Text="Employer" Font-Bold="True" Font-Size="15pt"></asp:Label>
                
                       <br />
                       <br />
                       <asp:Label ID="Label36" runat="server" Text="REGISTER NOW" Font-Bold="True" ForeColor="#246DF8"></asp:Label>
                
                  </div>
                  <div class="imgLeft" style="float: left; margin-left: 10em; background-color:#EEF4FF; border-radius: 5px; border: cadetblue; height: 452px; width: 503px;  box-shadow: 0px 3px 8px 0px rgba(0, 0, 0, 0.05);">
                      <asp:Image ID="Image28" runat="server" Height="276px" ImageUrl="~/images/1.png" Width="269px" />
                      <br />
                      <br />
                      <asp:Label ID="Label37" runat="server" Text="ARE YOU A" Font-Size="10pt" ForeColor="#6E7383"></asp:Label>
                      <br />
                      <asp:Label ID="Label33" runat="server"  Text="Candidate" Font-Bold="True" Font-Size="15pt"></asp:Label>
                       
                      <br />
                      <br />
                      <asp:Label ID="Label35" runat="server" Text="REGISTER NOW" Font-Bold="True" ForeColor="#35C38F"></asp:Label>
                       </div>
                  </div>
               </div>
      
        </div>
       
        <div class="reviews" style="background-color: #246DF8; margin-top: 2em; ">
             <div align="center">
          
          
                  <br />
                  <br />
                  <asp:Label ID="Label39" runat="server" Text="“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob One”" Font-Size="18pt" ForeColor="White"></asp:Label>
                  <br />
                  <br />
                <asp:Label ID="Label34" runat="server" Text="MARIA MARLIN @ GOOGLE" Font-Size="12pt" ForeColor="White"></asp:Label>
                  <br />
                  <br />
          


       </div>
       </div>
           <div class="reviews1" style="background-color: white;">
             <div align="center">
          
         
                  <br />
                  <br />
                  <asp:Label ID="Label40" runat="server" Text="“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Two”" Font-Size="18pt" ForeColor=#246DF8></asp:Label>
                  <br />
                  <br />
                <asp:Label ID="Label41" runat="server" Text="LAURA HARPER @ AMAZON" Font-Size="12pt" ForeColor=#246DF8></asp:Label>
                  <br />
                  <br />
        


       </div>
       </div>
         <div align="center">
        <div class="reviews" style="background-color: #246DF8; margin-top: 2em;">
            
          
            
                  <br />
                  <br />
                  <asp:Label ID="Label42" runat="server" Text="“On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charmsto send our denim shorts wardrob Three”" Font-Size="18pt" ForeColor="White"></asp:Label>
                  <br />
                  <br />
                <asp:Label ID="Label43" runat="server" Text="JOHN DOE @ ENVATO" Font-Size="12pt" ForeColor="White"></asp:Label>
                  <br />
                  <br />
       

       </div>
       </div>

        <div class="footer" style="margin-top: 3em; text-align:center;">
             <asp:Label ID="Label44" runat="server" ForeColor="#6F7484" Text="Kimberly Tiro ASP Assignment Landing Page 2020"></asp:Label>


        </div>

       
    </form>
   
  
</body>
</html>
