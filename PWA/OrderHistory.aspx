<%@ Page Title="Order Review" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="PWA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent">
        <h1>Confirm Your Order:</h1>
        <p>Please review your order information 
        to the right, then press "Submit" to confirm your order.</p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" />
        </p>
    </div>
    <div class="HomeImage">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
