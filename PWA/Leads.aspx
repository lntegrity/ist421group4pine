<%@ Page Title="Our Customers" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Leads.aspx.cs" Inherits="PWA.Leads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <h1>Our Customers:</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;C:\Documents and Settings\BaTz\Desktop\Takara's\PWS\App_Data\Pine.mdf&quot;;Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            
            SelectCommand="SELECT [fldLeadID], [fldLeadName], [fldLeadAddress], [fldLeadState], [fldLeadCity], [fldLeadZip], [fldLeadPhone] FROM [tblLeads]">
        </asp:SqlDataSource>
        <asp:GridView ID="gvLeads" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="fldLeadID" 
            DataSourceID="SqlDataSource1" AllowSorting="True" PageSize="7" 
            CssClass="LeadsLinks">
            <RowStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="fldLeadID" HeaderText="Lead ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="fldLeadID" />
                <asp:BoundField DataField="fldLeadName" HeaderText="Lead Name" 
                    SortExpression="fldLeadName" />
                <asp:BoundField DataField="fldLeadAddress" HeaderText="Lead Address" 
                    SortExpression="fldLeadAddress" />
                <asp:BoundField DataField="fldLeadState" HeaderText="Lead State" 
                    SortExpression="fldLeadState" />
                <asp:BoundField DataField="fldLeadCity" HeaderText="Lead City" 
                    SortExpression="fldLeadCity" />
                <asp:BoundField DataField="fldLeadPhone" HeaderText="Lead Phone" 
                    SortExpression="fldLeadPhone" />
                <asp:BoundField DataField="fldLeadZip" HeaderText="Lead Zip" 
                    SortExpression="fldLeadZip" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#663300" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
    </div>
</asp:Content>
