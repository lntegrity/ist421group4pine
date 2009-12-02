<%@ Page Title="Order" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="PWA.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <h1>Confirm Your Order:</h1>
        <table>
            <tr>
                <td>
                    Name:</td>
                <td>
                    <asp:TextBox ID="txtLeadName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Address:</td>
                <td>
                    <asp:TextBox ID="txtLeadAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    City:</td>
                <td>
                    <asp:TextBox ID="txtLeadCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    State:</td>
                <td>
                    <asp:TextBox ID="txtLeadState" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Phone:</td>
                <td>
                    <asp:TextBox ID="txtLeadPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" /></p>
    </div>
    <div class="Content">
        <p>Menu with name, price, and total
        <asp:DataGrid ID="Menu" runat="server" ></asp:DataGrid>
        </p>
    </div>
</asp:Content>
