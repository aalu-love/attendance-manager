<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="Mobile_based_attendance_system.display" %>

<!DOCTYPE html>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="wallpaper4" onload="Validate()">
    <form id="form1" runat="server">
        <h1 class="detail1">Details</h1>
        <asp:ScriptManager ID="sc" runat="server"></asp:ScriptManager>
        <div>
            <table style="margin:auto;font-size:20px">
                <tr>
                    <td class="label">
                        <asp:Label ID="Label1" runat="server" Text="Name :" ForeColor="White"></asp:Label>
                    </td>
                    <td class="data">
                        <asp:Label ID="Label5" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="Label2" runat="server" Text="Desgination :" ForeColor="White"></asp:Label>
                    </td>
                    <td class="data">
                        <asp:Label ID="Label6" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="Label3" runat="server" Text="Personal No. :" ForeColor="White"></asp:Label>
                    </td>
                    <td class="data">
                        <asp:Label ID="Label7" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="Label4" runat="server" Text="Location :" ForeColor="White"></asp:Label>
                    </td>
                    <td class="data">
                        <asp:Label ID="Label8" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="lblLati" runat="server" Text="Latitude :" ForeColor="White"></asp:Label>
                    </td>
                    <td class="data">
                        <asp:Label CssClass="badge badge-secondary" ID="lblLat" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="lblLongi" runat="server" Text="Longitude :" ForeColor="White"></asp:Label>
                    </td>
                    <td class="data">
                        <asp:Label CssClass="badge badge-secondary" ID="lblLong" runat="server" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Label ID="resultd" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Bold="True" Font-Size="X-Large" Height="50px" Text="IN" Width="80px" />
            <asp:Button ID="Button2" runat="server" BackColor="#FF1111" Font-Bold="True" Font-Size="X-Large" Height="50px" Text="OUT" Width="80px" />
        </p>
        <span>
             <asp:Button ID="Button3" OnClick="logoutBtn" CssClass="logout-btn" runat="server" Font-Bold="True" Text="Logout"/>
        </span>

        <script type="text/javascript">
            function showPosition(position) {
                x.value = position.coords.latitude;
                y.value = position.coords.longitude;
            }
            function Validate() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        var myx = parseFloat(position.coords.latitude);
                        var myy = parseFloat(position.coords.longitude);
                        var needtox = parseFloat(document.getElementById("lblLat").innerText);
                        var needtoy = parseFloat(document.getElementById("lblLong").innerText);
                        var dis = (Math.sqrt(Math.pow((myx - needtox), 2) + Math.pow((myy - needtoy), 2)));
                        console.log(myx);
                        console.log(myy);
                        console.log(dis);
                        if (dis > 500) {
                            document.getElementById("Button1").disabled = true;
                            document.getElementById("Button2").disabled = true;
                        }
                        else {
                            document.getElementById("Button1").disabled = false;
                            document.getElementById("Button2").disabled = false;
                        }
                    });
                } else {
                    x.value = "Geolocation is not supported by this browser.";
                }

            }
        </script>
        <script>
            function preventBack() { window.history.forward(); }
            setTimeout("preventBack()", 0);
            window.onunload = function () { null };
        </script>
    </form>
</body>
</html>
