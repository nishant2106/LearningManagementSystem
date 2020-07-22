<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student'slogin.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />
    </head>
    <body>
        <div class="login-box">
            <img src="avatar.png" class="avatar"/>
             <h1 style="color: #FFFFFF;text-align:center">Login Here</h1>
            <form id="form1" runat="server">
                <p style="text-align:center">Username</p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<p style="text-align:center">Password</p>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
               <br />
                <a href="studentforgot.aspx">Forgot Password</a><br />
                 <a href="Studentreg.aspx">New Registration</a>
            </form>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 960px">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </p>
    </body>
</html>
