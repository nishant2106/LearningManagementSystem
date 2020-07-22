<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentResult.aspx.cs" Inherits="StudentResult" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/cs/font-awesome.min.css"/>
    <title>Learning System</title>
    <style type="text/css">
        .nisdiv {
            height: 672px;
            margin-left: 4px;
            margin-top: 1px;
        }
        .auto-style1 {
            width: 526px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
     <div id="header">
        <div id="header2"><h1 class="header1">GPM Learning System</h1></div>
        </div>
         <div class="nav">
            <ul>
                <li><a href="Home.aspx"><i class="fa fa-home"></i>Home</a></li>
                <li><a href="aboutus.aspx"><i class="fa fa-about"></i>About Us</a></li>
         <li><a href="studentProfile.aspx"><i class="fa fa-profile"></i>My Info</a></li>
                
                </ul>
            </div>
             <div class="opt" >
                 <ul>
                    <li><a href="Student'sdashboard.aspx">Dashboard</a></li>
                     <li><a href="studenttakecourse.aspx">Courses</a></li>
                    <li><a href="studentdownload.aspx">Download File</a></li>
                      <li><a href="StdSyllabus.aspx">Syllabus</a></li>
	                <li><a href="studentTakeQuiz.aspx">Take Quiz</a></li>
	                <li><a href="studentInbox.aspx">ChatHub</a></li>
	                <li><a href="studentProfile.aspx">Profile</a></li>
                      <li><a href="home.aspx"><i class="fa fa-home">Logout</i></a></li>
                </ul>
             </div>
     <div class="con">
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px;text-align:center">Result</h3>
         <div class="nisdiv">         
                     
             <br />
             <br />
                     
             <table style="width:868px; height: 250px; left: 100px; right: 100px; background-color: #8B0000; color: #FFFFFF; font-size: 20px;">
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</td>
                    <td>&nbsp;<asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Email-ID"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp;</td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Score"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                        &nbsp;</td>
                   
                </tr>
                 </table>
             </div>
             </div>
         </form>
         </body>
    </html>
