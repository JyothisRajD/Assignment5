<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest.Master" AutoEventWireup="true" CodeBehind="register_page.aspx.cs" Inherits="WebApplication.Guest.register_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSheet2.css" rel="stylesheet" />

    <div class=login-form>
        <h1>Register Form</h1>
             <table align="center" class="center">
                <tr>
                    <td>
                       <p>Name</p> 
                    </td>
                     <td>
                         <asp:TextBox ID="txtname" runat="server" class="textbox" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Alphabets Only" ControlToValidate="txtname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                   <tr>
                    <td>
                       <p>Email</p>  
                    </td>
                        <td>
                         <asp:TextBox ID="txtadd" runat="server" class="textbox" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Required" ControlToValidate="txtadd" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtadd" Display="Dynamic" ErrorMessage="Enter a Valid Email Id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$"></asp:RegularExpressionValidator>

                    </td>
                </tr>

                 <tr>
                    <td>
                         <p>Age</p>
                    </td>
                        <td>
                         <asp:TextBox ID="txtage" runat="server" class="textbox" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Your Age" ControlToValidate="txtage" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="Age Must be Between 20 to 30" ForeColor="Red" MaximumValue="30" MinimumValue="20" SetFocusOnError="True"></asp:RangeValidator>
                  </td>
                </tr>

                      <tr>
                    <td>
                         <p>Gender</p>
                   
                    </td>
                    <td>
                        <asp:RadioButtonList ID="Radiogen" runat="server" Height="16px" Width="122px" >
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Your Gender" ControlToValidate="Radiogen" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                 <tr>
                    <td>
                        <p>User</p>
                    </td>
                          <td>
                              <asp:TextBox ID="txtuser" runat="server" class="textbox" ></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter a Username" ControlToValidate="txtuser" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                </tr>

                 <tr>
                    <td>
                        <p>Password</p>
                    </td>
                          <td>
                              <asp:TextBox ID="txtpass" runat="server" TextMode="password" class="textbox"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>

                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ControlToValidate="txtpass"></asp:RegularExpressionValidator>

                    </td>
                </tr>

                 </table>
        <asp:Button ID="Btnreg" runat="server" Text="Register" OnClick="Btnreg_Click" class="button" />
        </div>
</asp:Content>
