<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teachertakecouse.aspx.cs" Inherits="teachertakecouse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/cs/font-awesome.min.css"/>
    <title>Learning System</title>
    <style type="text/css">
        .auto-style5 {
            width: 301px;
        }
        .auto-style6 {
            width: 338px;
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
                <li><a href="teacherProfile.aspx"><i class="fa fa-profile"></i>My Info</a></li>    </ul>
            </div>
             <div class="opt" >
                 <ul>
                     <li><a href="Teacher'sdashboard.aspx">Dashboard</a></li>
	                 <li><a href="teacherupload.aspx">Upload File</a></li>
                     <li><a href="teaSyllabus.aspx">Syllabus</a></li>
	                 <li><a href="teacherQuizGen.aspx">Generate Quiz</a></li>
                     <li><a href="Show Result.aspx">Results</a></li>
                    	<li><a href="teacherInbox.aspx">ChatHub</a></li>
	<li><a href="teacherProfile.aspx">Profile</a></li>
                                 <li><a href="home.aspx"><i class="fa fa-home">Logout</i></a></li>
                </ul>
             </div>
     <div class="con">
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px;text-align:center">Courses</h3>
        <div class="nisdiv">

        &nbsp;<table style="width:100%;">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="Course"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Network Management and Administration"></asp:Label>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Cousre Code"></asp:Label>
                     </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="CO16404"></asp:Label>
                     </td>
                    
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="Create Quiz" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/tcourse1.aspx" />
                    </td>
                   
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Upload Files" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/course1upload.aspx" />
                    </td>
                   
                </tr>
            
                
            </table>
            <br />
<table style="width:100%;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Cousre"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Software Testing"></asp:Label>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Text="Cousre Code"></asp:Label>
                     </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="CO16406"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button4" runat="server" Text="Create Quiz" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/tcourse2.aspx" />
                    </td>
                  
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Upload Files" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/course2upload.aspx" />
                    </td>
                </tr>
            
                
            </table>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server" Text="Cousre"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Computer Security"></asp:Label>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label11" runat="server" Text="Cousre Code"></asp:Label>
                     </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="CO16408"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button7" runat="server" Text="Create Quiz" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/tcourse3.aspx" />
                    </td>
                    
                    <td>
                        <asp:Button ID="Button9" runat="server" Text="Upload Files" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/course3upload.aspx" />
                    </td>
                </tr>
            </table>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label13" runat="server" Text="Cousre"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Java"></asp:Label>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label15" runat="server" Text="Course Code"></asp:Label>
                     </td>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text="CO16409"></asp:Label>
                     </td>
                    
                </tr>
               <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button10" runat="server" Text="Create Quiz" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/tcourse4.aspx" />
                    </td>
                   
                    <td>
                        <asp:Button ID="Button12" runat="server" Text="Upload Files" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/course4upload.aspx" />
                    </td>
                </tr>
            
                
            </table>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </div>
    </div>

        
        <div class="footer" style="color: #808000">2018@ All Right Reserved</div>
     </form>
</body>
</html>