<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <title>LMS</title>
   
    <style type="text/css">
        .auto-style2 {
            width: 1039px;
        }
        .auto-style3 {
            text-decoration: none;
            display: block;
            color: white;
            background: url("155110344464798410.jpg");
            height: 634px;
            font-size: 30px;
            line-height: 45px;
            text-align: center;
            
        }
        .auto-style4 {
            width: 1184px;
            height: 45px;
            position: absolute;
            top: 272px;
            left: 97px;
            z-index: 1;
            text-shadow: 2px 2px 6px #000000;
        }
        .auto-style5 {
            width: 493px;
            height: 45px;
            position: absolute;
            top: 560px;
            left: 81px;
            z-index: 1;
            text-shadow: 2px 2px 6px #000000;
        }
        .auto-style6 {
            width: 493px;
            height: 45px;
            position: absolute;
            top: 560px;
            left: 721px;
            z-index: 1;
            text-shadow: 2px 2px 6px #000000;
        }
        .auto-style7 {
            text-decoration: underline;
        }
    </style>
   
</head>
<body>
    
    <form id="form1" runat="server">

    <div id="header">
        <div id="header2" class="auto-style2"><h1 class="header1">GPM Learning System</h1></div>
        </div>
        <div class="nav">
            <ul>
                <li><a href="Teacher'slogin.aspx">Teacher's Login</a> </li>
                <li><a href="Student'slogin.aspx">Student's Login</a></li>
                <li><a href="aboutus.aspx">About Us</a></li>

            </ul>
            </div>
        <div class="auto-style3">

            <div class="auto-style4">
                <p><i> A GPM learning system (GLS) is a Website for delivery and management of educational courses. It is a client-server type solution, typically web-based, used to handle student registration, delivery of course content, administration of tests and assignments, and related record keeping.
                     An LMS is particularly useful for fully online courses or training programs. Provides Teacher and Student Communication. </i></p></div>

            <div class="auto-style5"><p><i>&nbsp;Teachers<br />
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Teachersreg.aspx">REGISTER NOW</asp:HyperLink><br />
                </i></p>
            </div>
            <div class="auto-style6">
                <p><i>
                Students<br />
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style7" ForeColor="White" NavigateUrl="~/studentreg.aspx">REGISTER NOW</asp:HyperLink>
            </i></p>
                    </div>
&nbsp;</div>
        
    <div class="footer" style="color: #808000">2018@ All Right Reserved</div>
        
        
        
    </form>
        
        
        
</body>
</html>