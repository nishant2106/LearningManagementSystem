<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacherchangepass.aspx.cs" Inherits="teacherchangepass" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet4.css" />
    </head>
    <body>
        <div class="forgot-box">
            <img src="forgot.png" class="avatar"/>
            <h1 style="color: #FFFFFF;text-align:center">Change Password</h1>
            <form id="form1" runat="server">
                <p style="text-align:center">&nbsp;</p>
                <p style="text-align:center">Enter New Password</p>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <p style="text-align:center">Confirm Password</p>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
                <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>

              </form>
        
            </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:glsConnectionString %>" UpdateCommand="UPDATE [teacher_reg] SET [password] = @password,[cpass] = @cpass WHERE [emailid] = @emailid">
      <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="cpass" Type="String" />
                    <asp:Parameter Name="emailid" Type="String" />
                   
                </UpdateParameters>
            </asp:SqlDataSource>
        
    </body>
</html>