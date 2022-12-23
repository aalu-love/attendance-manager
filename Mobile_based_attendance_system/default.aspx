<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Mobile_based_attendance_system.home" %>
<!DOCTYPE html>
<link rel="stylesheet" href="style.css">
<style>
    body {
        background-image: url('tata7.jpg');
        background-position: center;
        background-repeat: no-repeat;
        background-position-y: 20%;
        background-size: 110% auto;
    }
    p {
        text-align: center;
        color: #FF6600;
        font-size: xx-large;
        font-family: Broadway;
    }
    p img {
        width: 196px;
        height: 163px;
    }
    .fea input {
        font-family: Cocogoose ;
        font-size: large;
        height: 90px;
        width: 90px;
        background-color: #3399FF;
        font-weight: bold;
        margin-inline: 20px;
        border-radius: 5px;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <img src="Picture1.png" /><br />
            Mobile Based Attendance System
        </p>
        <div class="fea">
            <asp:Button ID="signupbtn" runat="server" OnClick="signupbtn_Click" Text="Sign Up" />
            <asp:Button ID="loginbtn" runat="server" OnClick="loginbtn_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
