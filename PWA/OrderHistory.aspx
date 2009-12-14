<%@ Page Title="Order Review" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="PWA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent">
        <h1>Review Your Orders:</h1>
        <p>To the right you will see previously placed orders:</p>
    </div>
    <div class="HomeImage">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;C:\Documents and Settings\Norman Hunt\Desktop\ISTPineProject\PWS\App_Data\Pine.mdf&quot;;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [OrderID], [Total], [Date] FROM [tblOrder]"></asp:SqlDataSource>
    </div>
</asp:Content>
