<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="User_profile.aspx.cs" Inherits="WebApplication.User.User_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSheet2.css" rel="stylesheet" />
    <center>
    <div class="login-form">
        <h1>Welcome <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></h1>
    <table align="center">
        <tr>
            <td><p>Email ID :</p></td>
            <td>
               <p> <asp:Label ID="lblemail" runat="server" Text="Label" ></asp:Label></p></td></tr>
           <tr>
               <td><p>Age :</p></td>
               <td>
               <p><asp:Label ID="lblage" runat="server" Text="Label"></asp:Label></p></td></tr>
            <tr>
                <td><p>Gender :</p></td>
                <td>
                <p><asp:Label ID="lblgen" runat="server" Text="Label" ></asp:Label></p></td></tr>
           <tr>
               <td><p>Username</p></td>
               <td>
                <p><asp:Label ID="lblusr" runat="server" Text="Label" ></asp:Label></p></td></tr>
           <tr>
               <td><p>Status :</p></td>
               <td>
                <p><asp:Label ID="lblstatus" runat="server" Text="Label"></asp:Label></p></td>
        </tr>
    </table>
        </div>
        </center>
</asp:Content>
