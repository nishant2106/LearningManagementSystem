<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher'sdashboard.aspx.cs" Inherits="Teacher_sdashboard" %>


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
                     <li><a href="teaSyllabus.aspx">Syllabus</a></li>
	                 <li><a href="teacherQuizGen.aspx">Generate Quiz</a></li>
                     <li><a href="Show Result.aspx">Results</a></li>
                    	<li><a href="teacherInbox.aspx">ChatHub</a></li>
	<li><a href="teacherProfile.aspx">Profile</a></li>
                                 <li><a href="home.aspx"><i class="fa fa-home">Logout</i></a></li>
                </ul>
             </div>
        <div class="con">
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px">Overview</h3> 
          <div class="dash1">
       <div class="title"><h6 class="dashti">Courses</h6>
           <div class="recent">
          Your recent courses</div>
       </div>
              <asp:Label ID="Label1" runat="server" Text="Network Management and Administration"></asp:Label>
          <br />
              <asp:Label ID="Label2" runat="server" Text="Software Testing"></asp:Label>
              <br />
              <asp:Label ID="Label3" runat="server" Text="Computer Security"></asp:Label>
              <br />
              <asp:Label ID="Label4" runat="server" Text="Java"></asp:Label>  
          </div>
        <div class="dash2">
            <div class="title"><h6 class="dashti">Quizzes</h6>
                 <div class="recent">
          Your recent quizzes</div>
            </div>
              <asp:Label ID="Label5" runat="server" Text="Main Quiz"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/result.aspx">See Result</asp:HyperLink>
            <br />
            <asp:Label ID="Label7" runat="server" Text="NMAQuiz1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/result1.aspx">See Result</asp:HyperLink>
            <br />
            <asp:Label ID="Label9" runat="server" Text="CSQuiz1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/result2.aspx">See Result</asp:HyperLink>
            <br />
            <asp:Label ID="Label11" runat="server" Text="STQuiz1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/result3.aspx">See Result</asp:HyperLink>
            <br />
            <asp:Label ID="Label13" runat="server" Text="JavaQuiz1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/result4.aspx">See Result</asp:HyperLink>
       </div>
         <p style="text-align: center">  
             &nbsp;</p>
        <p style="text-align: center">  
            &nbsp;</p>
        <p style="text-align: center">  
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium"  
            ForeColor="DarkRed">Upcoming Events</asp:Label>&nbsp;<br /><br/>  
        </p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"  
            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"  
            ForeColor="#663399" ShowGridLines="True" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"  
            OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" Height="174px" style="margin-left: 327px" Width="406px">  
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />  
            <SelectorStyle BackColor="#FFCC66" />  
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />  
            <OtherMonthDayStyle ForeColor="#CC9966" />  
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />  
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />  
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />  
        </asp:Calendar>  
        <br />  
        <b></b>  
        <br />  
        <br/>
        </div>

        <div class="footer" style="color: #808000">2018@ All Right Reserved</div>
     </form>
</body>
</html>