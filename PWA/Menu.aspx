<%@ Page Title="" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="PWA.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="Content">
    <h1>Our Signature Sushi Rolls:</h1>
    <p>
        Menu DataGrid goes here, maybe along with pictures of the featured rolls to distinguish this page from the Order page?
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
            <Columns>
            <asp:BoundField DataField="fldItemID" HeaderText="Item ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="fldItemID" />
            <asp:BoundField DataField="fldItemName" HeaderText="Item Name" 
                SortExpression="fldItemName" />
            <asp:BoundField DataField="fldDescription" HeaderText="Description" 
                SortExpression="fldDescription" />
            <asp:BoundField DataField="fldItemPrice" HeaderText="Item Price" 
                SortExpression="fldItemPrice" />
            </Columns>
        </asp:GridView>
    </p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:PineConnectionString %>" 
    SelectCommand="SELECT [fldItemID], [fldItemName], [fldDescription], [fldItemPrice] FROM [tblMenu]">
</asp:SqlDataSource>
</div>
</asp:Content>
