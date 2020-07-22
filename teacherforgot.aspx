<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacherforgot.aspx.cs" Inherits="teacherforgot" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        .forgot-box{
    width:320px;
    height:400px;
      background:rgba(0,0,0,0.5);
    color:#fff;
    top:50%;
    left:50%;
    position:absolute;
    transform:translate(-50%,-50%);
    box-sizing:border-box;
}
        #TextBox1
{
    border:none;
    border-bottom:1px solid #fff;
    background:transparent;
    outline:none;
    height:40px;
    color:#fff;
    font-size:16px;
}
    </style>
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