<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tcourse4.aspx.cs" Inherits="tcourse4" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/cs/font-awesome.min.css"/>
    <title>Learning System</title>
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
                     <li><a href="teachertakecouse.aspx">Courses</a></li>
	                 <li><a href="teacherupload.aspx">Upload File</a></li>
	                 <li><a href="teacherQuizGen.aspx">Generate Quiz</a></li>
                    	<li><a href="teacherInbox.aspx">ChatHub</a></li>
	<li><a href="teacherProfile.aspx">Profile</a></li>
                                 <li><a href="home.aspx"><i class="fa fa-home">Logout</i></a></li>
                </ul>
             </div>
        <div class="con">
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px">Quizzes</h3> 
       <div class="nisdiv"> 
      


      <br />
      <table style="width:100%;">
          <tr>
              <td>
                  <asp:Label ID="Label1" runat="server" Text="Quiz ID"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label2" runat="server" Text="001"></asp:Label>
              </td>
              
          </tr>
          <tr>
              <td>
                  <asp:Label ID="Label3" runat="server" Text="Quiz Name"></asp:Label>
              </td>
              <td>
                  <asp:Label ID="Label4" runat="server" Text="Chaper1"></asp:Label>
              </td>
              
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:Button ID="Button1" runat="server" Text="Create Quiz" BackColor="#0066FF" ForeColor="Black" PostBackUrl="~/coursequigen4.aspx" />
                  
              </td>
              
          </tr>
          
      </table>
      


  </div>
            </div>
        <div class="footer" style="color: #808000">2018@ All Right Reserved</div>
        </form>
</body>
</html>
