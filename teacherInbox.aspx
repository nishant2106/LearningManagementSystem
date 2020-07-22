<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacherInbox.aspx.cs" Inherits="teacherInbox" %>

<!OCTYPE html>

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
	<li><a href="teacherProfile.aspx">Profile</a></li>
                                 <li><a href="home.aspx"><i class="fa fa-home">Logout</i></a></li>
                </ul>
             </div>
     <div class="con">
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px;text-align:center">Inbox</h3>
          <div class="nisdiv" style="table-layout: auto">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TextBox1" runat="server" Width="643px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
              <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete All" />
              <br />
              <br />
      <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                 ShowFooter="True" style="text-align: center; top: 312px; position:absolute; left: 272px;"  DataSourceID="SqlDataSource1"
                 ViewStateMode="Enabled" Width="1022px" height="100%" CssClass="grid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    
                    <asp:TemplateField HeaderText="Name" ControlStyle-Width="184px">
                        <EditItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" style="text-align: center" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Messages">
                        <EditItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Messages") %>'></asp:Label>
                        </EditItemTemplate>
                        
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" style="text-align: center" Text='<%# Eval("Messages") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                                    
                </Columns>
              
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>    
              <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br />
            <asp:Label ID="Label9" runat="server"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:glsConnectionString %>"
                 
                InsertCommand="INSERT INTO [chathub1] ([emailid], [Name], [Messages]) VALUES (@emailid, @Name, @Messages)"
                 SelectCommand="SELECT * FROM [chathub1]">
                 <InsertParameters>
                    <asp:Parameter Name="emailid" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Messages" Type="String" />
                     <asp:Parameter Name="ID" Type="Int32" />
                </InsertParameters>
               
            </asp:SqlDataSource>
            <br />
            <br />
    </div>
        </div>
    </form>
</body>
</html>
