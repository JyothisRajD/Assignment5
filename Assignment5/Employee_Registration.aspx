<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Registration.aspx.cs" Inherits="Assignment5.Employee_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <table>
                <tr>
                    <td>Name</td>          
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>          
                    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Phone</td>          
                    <td><asp:TextBox ID="txtphn" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Age</td>          
                    <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>&nbsp;<asp:Button ID="btn" runat="server" Text="Register" OnClick="btn_Click" /></td>          
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    <asp:HyperLinkField DataNavigateUrlFields="emp_Id" DataNavigateUrlFormatString="User_Page.aspx?emp_Id={0}" HeaderText="Go" Text="Go" />
                </Columns>
            </asp:GridView>
        </div>
            </center>
    </form>
</body>
</html>
