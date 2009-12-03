<%@ Page Title="Our Customers" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Leads.aspx.cs" Inherits="PWA.Leads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <h1>Our Customers:</h1>
        <asp:DataGrid ID="LeadsList" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="4" ForeColor="#330099" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" >
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" 
                Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                Font-Underline="False" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <ItemStyle BackColor="White" ForeColor="#330099" />
            <HeaderStyle Font-Bold="True" BackColor="#663300" ForeColor="#FFFFCC" />
        </asp:DataGrid>
    </div>
</asp:Content>
