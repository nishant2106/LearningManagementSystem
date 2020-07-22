<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentforgot.aspx.cs" Inherits="studentforgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <title>Login Page</title>
   <link rel="stylesheet" type="text/css" href="StyleSheet4.css" />
    </head>
    <body>
        <div class="forgot-box">
            <img src="forgot.png" class="avatar"/>
            <h1 style="color: #FFFFFF;text-align:center">Forgot Password</h1>
            <form id="form1" runat="server">
                <p style="text-align:center">Email-ID</p>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Recieve OTP" />
                <p style="text-align:center">Recieved OTP</p>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
&nbsp;<br />
               </form>
        </div>
    </body>
</html>