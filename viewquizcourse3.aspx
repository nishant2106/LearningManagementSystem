<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewquizcourse3.aspx.cs" Inherits="viewquizcourse3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/cs/font-awesome.min.css"/>
    <title>Learning System</title>
    <style type="text/css">
        .nisdiv {
            height: 345px;
            text-align: left;
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
        <h3 style="margin-left:10px;margin-top:20px; text-align:left; font-size: 43px;margin-bottom: 0px;text-align:center">View Generated Quiz</h3>
        <div class="nisdiv">

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CellPadding="4" ForeColor="#333333" GridLines="None"
                 OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                ShowFooter="True" style="text-align: center" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting"
                 ViewStateMode="Enabled" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="QuizID">
                        <EditItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("QuizID") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox13" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" style="text-align: center" Text='<%# Eval("QuizID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="question">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Width="85px" Text='<%# Eval("question") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox7" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("question") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="A">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" Width="85px" runat="server" Text='<%# Eval("A") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox8" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("A") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="B">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" Width="85px" runat="server" Text='<%# Eval("B") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox9" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("B") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" Width="85px" runat="server" Text='<%# Eval("C") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox10" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("C") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="D">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" Width="85px" runat="server" Text='<%# Eval("D") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox11" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("D") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="answer">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" Width="85px" runat="server" Text='<%# Eval("answer") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox12" Width="85px" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("answer") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="operations">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update" OnClick="LinkButton3_Click">Update</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel" OnClick="LinkButton3_Click">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#CCCCCC" OnClick="LinkButton5_Click">Insert</asp:LinkButton>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>    
            <br />
            
            <asp:Button ID="Button1" runat="server" BackColor="#990000" ForeColor="White" OnClick="Button1_Click" Text="DELETE ALL" />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:glsConnectionString %>" DeleteCommand="DELETE FROM [coursequiz3] WHERE [QuizID] = @QuizID" InsertCommand="INSERT INTO [coursequiz3] ([question], [A], [B], [C], [D], [answer]) VALUES (@question, @A, @B, @C, @D, @answer)" SelectCommand="SELECT * FROM [coursequiz3]" UpdateCommand="UPDATE [coursequiz3] SET [question] = @question, [A] = @A, [B] = @B, [C] = @C, [D] = @D, [answer] = @answer WHERE [QuizID] = @QuizID">
                <DeleteParameters>
                    <asp:Parameter Name="QuizID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="question" Type="String" />
                    <asp:Parameter Name="A" Type="String" />
                    <asp:Parameter Name="B" Type="String" />
                    <asp:Parameter Name="C" Type="String" />
                    <asp:Parameter Name="D" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="question" Type="String" />
                    <asp:Parameter Name="A" Type="String" />
                    <asp:Parameter Name="B" Type="String" />
                    <asp:Parameter Name="C" Type="String" />
                    <asp:Parameter Name="D" Type="String" />
                    <asp:Parameter Name="answer" Type="String" />
                    <asp:Parameter Name="QuizID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
    </div>
        </div>
    </form>
</body>
</html>
