<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultyreg.aspx.cs" Inherits="WebApplication.facultyreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 457px;
        }
        .auto-style7 {
            width: 164px;
            height: 70px;
        }
        .auto-style8 {
            height: 70px;
        }
        .auto-style9 {
            width: 164px;
            height: 69px;
        }
        .auto-style10 {
            height: 69px;
        }
    </style>
</head>
<body style="width: 1352px; height: 452px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblfname" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblfemail" runat="server" Text="Email"></asp:Label>  
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfemail" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblfphone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfphone" runat="server"></asp:TextBox>
                    </td>
                </tr>

                 <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblfusrname" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfusrname" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblfpass" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtfpass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="fbutton" runat="server" Text="Register" OnClick="fbutton_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
