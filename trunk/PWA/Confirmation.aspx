<%@ Page Title="Thank You!" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="PWA.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="refresh" content="4;url=Default.aspx" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent">
    <h1>Thank You For Your Order!</h1>
    <p>We have received your order place on 
        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>; now redirecting you to the home page...</p>
    </div>
</asp:Content>
