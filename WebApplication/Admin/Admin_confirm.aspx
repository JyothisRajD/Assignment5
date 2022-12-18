<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_confirm.aspx.cs" Inherits="WebApplication.Admin.Admin_confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="logID" OnRowDeleting="GridView1_RowDeleting" Height="242px"  Width="715px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="logID" HeaderText="Log Id" />
                    <asp:BoundField DataField="username" HeaderText="User Name" />
                    <asp:BoundField DataField="role" HeaderText="Role" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                    <asp:CommandField CancelText="Block" EditText="Authenticate" HeaderText="Authenticate" ShowEditButton="True" UpdateText="Confirm" />
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
