<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="hustler1.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
			#header{
				background-color: lightblue;
				width:100%;
				height:50px;
				text-align: center;
			}

			#sidebar-left{
				float:left;
				width:15%;
				background-color: red;
			}

			#main{
				float:left;
				width:70%;
				background-color: lightgray;
			}

			#sidebar-right{
				float:right;
				width:15%;
				background-color: red;
			}

			#footer{
				clear:both;
				height: 50px;
				width: 100%;
				text-align: center;
				background-color: lightblue;
			}

			#sidebar-left, #main, #sidebar-right{
				min-height: 600px				
			}

		</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<div id="header">

			</div>
			<div id="sidebar-left">Left</div>
			<div id="main">Main</div>
			<div id="sidebar-right">Right</div>
			<div id="footer">Footer</div>
        </div>
    </form>
</body>
</html>
