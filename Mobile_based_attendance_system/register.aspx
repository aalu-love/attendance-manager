<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Mobile_based_attendance_system.register" %>

<!DOCTYPE html>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
</head>
<body class="wallpaper3">
    <form id="form1" runat="server">
        <br />
        <div class="table">
            <h1>REGISTER</h1>
            <table>
                <tr>
                    <td class="table-dark">
                        <asp:Label ID="Label7" runat="server" Text="Full Name" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="full_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="table-dark">
                        <asp:Label ID="Label3" runat="server" Text="Designation" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control" ID="desg" runat="server">
                            <asp:ListItem Value="">Please Select</asp:ListItem>
                            <asp:ListItem Value="1">Managing Director</asp:ListItem>
                            <asp:ListItem Value="2">Chief Executive Officer</asp:ListItem>
                            <asp:ListItem Value="3">Chief Financial Officer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="table-dark">
                        <asp:Label ID="Label1" runat="server" Text="Personal No." Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="perno" class="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="table-dark">
                        <asp:Label ID="Label2" runat="server" Text="Department" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control" ID="depart" runat="server">
                            <asp:ListItem Value="">Please Select</asp:ListItem>
                            <asp:ListItem Value="1">Finance </asp:ListItem>
                            <asp:ListItem Value="2">Human Resource</asp:ListItem>
                            <asp:ListItem Value="3">Operations</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="table-dark">
                        <asp:Label ID="Label4" runat="server" Text="Set Password" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="pass1" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="table-dark">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="pass2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="submitBtn" CssClass="btn btn-primary" Style="width: 100%" runat="server" Text="Sign up" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <p class="msg">
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
