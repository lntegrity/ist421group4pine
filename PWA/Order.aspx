<%@ Page Title="Order" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="PWA.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <h1>Place Your Order:</h1>
        <table class="style1">
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
    </div>
    <div class="Content">
        <p>Menu with ID, name, price, and a way to select quantity</p>
        <asp:DataGrid ID="Menu" runat="server" ></asp:DataGrid>
    </div>
</asp:Content>
