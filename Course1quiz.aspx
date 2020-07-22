<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course1quiz.aspx.cs" Inherits="Course1quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/cs/font-awesome.min.css"/>
    <title>Learning System</title>
    <style type="text/css">
        .nisdiv {
            height: 672px;
            margin-left: 99px;
            margin-top: 1px;
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
	                <li><a href="studentTakeQuiz.aspx">Take Quiz</a></li>
	                <li><a href="studentInbox.aspx">ChatHub</a></li>
	                <li><a href="studentProfile.aspx">Profile</a></li>
                      <li><a href="home.aspx"><i class="fa fa-home">Logout</i></a></li>
                </ul>
             </div>
     <div class="con">
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px;text-align:center">Attempt Quiz</h3>
  <div class="nisdiv"> 
      
       <asp:Label ID="Label1" runat="server" ForeColor="#CC001B"></asp:Label>
       
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="808px" Height="347px">
          <AlternatingRowStyle BackColor="#FF9966" BorderColor="#990000" BorderStyle="Groove" />
      <Columns>
          <asp:TemplateField HeaderText="Question">
              <ItemTemplate>
                  <asp:Label ID="qustn" runat="server" Text='<%#Eval("question") %>'></asp:Label>
                  <br />
                  <asp:RadioButton ID="RadioButton1" runat="server" Text='<%#Eval("A") %>' GroupName="A" />
                  <br />
                  <asp:RadioButton ID="RadioButton2" runat="server" Text='<%#Eval("B") %>' GroupName="A" />
                  <br />
                  <asp:RadioButton ID="RadioButton3" runat="server" Text='<%#Eval("C") %>' GroupName="A" />
                  <br />
                  <asp:RadioButton ID="RadioButton4" runat="server" Text='<%#Eval("D") %>' GroupName="A" />
                  <br />
                  <asp:HiddenField ID="hiddenF" runat="server" Value='<%#Eval("answer") %>' />
              </ItemTemplate>
              </asp:TemplateField>

          </Columns>
          <EmptyDataRowStyle BackColor="Red" />
      </asp:GridView>
            

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="btnclick" Text="Submit" BackColor="#0066FF" />
               
     
            

  </div>      
    </div>
        
        <div class="footer" style="color: #808000">2018@ All Right Reserved</div>
     </form>
</body>
</html>
