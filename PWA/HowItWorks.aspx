<%@ Page Title="How It Works" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="HowItWorks.aspx.cs" Inherits="PWA.HowItWorks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent">
        <h1>How Do I Order Online?</h1>
        <p>As part of Takara's mission to bring quality sushi to your table, we offer
        you the ability to place your order online.</p>  
        <p>To do so, navigate to our menu page, select the desired items, 
        choose your service type (pickup or delivery), and then submit your order.</p>
        <p>If you have any questions about your order, or if you encounter any problems, 
        please call us at (215) 441-0217, or send an email to Comments@Takaras.com</p>
    </div>
    <div class="HomeImage">
        Confirmation goes here - Order ID, date/time submitted, delivery/pickup?
    </div>
    <div>
    <asp:TextBox ID="SetLeadID" runat="server" Width="20px"></asp:TextBox>
    <asp:Button ID="btnSetLeadID" runat="server" Text="Set Lead ID" 
            onclick="btnSetLeadID_Click" />
    </div>
</asp:Content>
