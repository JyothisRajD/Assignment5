<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest.Master" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="WebApplication.Guest.login_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSheet1.css" rel="stylesheet" />

     <div class="login-form">
           <h1>Login Form</h1>
                <table align="center" class="center">
                <tr>
                    <td><p>Username</p></td>
                 <td>
                <asp:TextBox ID="txtuser" runat="server" class="textbox" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuser" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>

                </tr>
                <tr>
                    <td><p>Password</p></td>
                    <td>
                           <asp:TextBox ID="txtusrpass" runat="server" TextMode="password" class="textbox"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusrpass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                       </tr>


            </table>
                                <asp:Button ID="Btnlogin" runat="server" Text="Login" OnClick="Btnlogin_Click" class="button"/>

           </div>


        <%--<div>
           <table class="auto-style3">
               <tr>
                   <td>
                       <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuser" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
                <tr>
                   <td>
                       Password</td>
                   <td>
                       <asp:TextBox ID="txtusrpass" runat="server" TextMode="password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusrpass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>

               <tr>
                   <td>
                       <asp:Button ID="Btnlogin" runat="server" Text="Login" OnClick="Btnlogin_Click" />
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="lblwarn" runat="server"></asp:Label>
                   </td>
               </tr>
           </table>
        </div>--%>
</asp:Content>