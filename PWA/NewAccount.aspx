<%@ Page Title="Account Creation" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="PWA.NewAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="HomeContent">
        <h1>Create Your Account:</h1>
        <p>Please enter your personal information, then press Create Account to continue.</p>
        <table>
            <tr>
                <td>
                    <font face="Helvetica" size="3">Name:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadName" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">Address:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">City:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadCity" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">State:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadState" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">Phone:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadPhone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvLeadPhone" runat="server" 
                        ControlToValidate="txtLeadPhone" ErrorMessage="Format: xxx-xxx-xxxx">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexPhone" runat="server" 
                        ValidationExpression="\d{3}-\d{3}-\d{4}" 
                        ControlToValidate="txtLeadPhone">Format: xxx-xxx-xxxx</asp:RegularExpressionValidator>
                    </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnCreate" runat="server" Text="Create Account" 
                onclick="btnCreate_Click" />
        </p>
        <p>
            <asp:Label ID="lblThanks" runat="server" 
            Font-Names="Helvetica" Font-Size="11pt"></asp:Label>
        </p>
    </div>
    <div class="HomeImage">

    </div>
</asp:Content>
