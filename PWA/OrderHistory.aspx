<%@ Page Title="Order Review" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="PWA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent">
        <h1>Review Your Orders:</h1>
        <p>To the right you will see previously placed orders:</p>
    </div>
    <div class="HomeImage">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
