<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentreg.aspx.cs" Inherits="studentreg" %>

<!DOCTYPE html>

<html>
<head>
    <style>
        #TextBox5
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
     <title>Registration Page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet3.css" />
    </head>
    <body>
        <div class="registration-box">
            <img src="logo.jpg" class="avatar">
            <h1  style="color: #FFFFFF;text-align:center">Register Here</h1>
            <form id="form1" runat="server">
              
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="E-mail Id"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"  TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Mobile No."></asp:Label>
                &nbsp;&nbsp;&nbsp;<select id="ph" name="D1"><option id="91">+91</option></select>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone"></asp:TextBox>
              
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Confirm Pass"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="37px" Text="Register" Width="292px" OnClick="Button1_Click" />
              
                </form>
        </div>
        
        <p style="margin-left: 200px">
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label7" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <p style="margin-left: 560px">
            &nbsp;</p>
    </body>
</html>
