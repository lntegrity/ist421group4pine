<%@ Page Title="Leads" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Leads.aspx.cs" Inherits="PWA.Leads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <h1>Our Customers:</h1>
        <asp:DataGrid ID="LeadsList" runat="server" >
            <HeaderStyle Font-Bold="True" />
        </asp:DataGrid>
    </div>
</asp:Content>
