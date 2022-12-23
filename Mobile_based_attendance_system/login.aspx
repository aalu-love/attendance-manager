<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Mobile_based_attendance_system.login" %>

<!DOCTYPE html>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body class="wallpaper2">
    <h1 class="loka">Login
    </h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Personal No. :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="perlog" runat="server" MaxLength="6" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="passlog" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button CssClass="btn btn-primary button" ID="loginl" runat="server" Text="Login" OnClick="loginl_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <p class="resulta">
            <asp:Label ID="result" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
