<%@ Page Title="Our Customers" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Leads.aspx.cs" Inherits="PWA.Leads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <h1>Our Customers:</h1>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;I:\PSU 2008\IST 421\Projects\Takara's\PWS\App_Data\Pine.mdf&quot;;Integrated Security=True;User Instance=True" 
            DeleteCommand="DELETE FROM [tblLeads] WHERE [fldLeadID] = @fldLeadID" 
            InsertCommand="INSERT INTO [tblLeads] ([fldLeadName], [fldLeadAddress], [fldLeadState], [fldLeadCity], [fldLeadPhone], [fldLeadZip]) VALUES (@fldLeadName, @fldLeadAddress, @fldLeadState, @fldLeadCity, @fldLeadPhone, @fldLeadZip)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [fldLeadID], [fldLeadName], [fldLeadAddress], [fldLeadState], [fldLeadCity], [fldLeadPhone], [fldLeadZip] FROM [tblLeads]" 
            
            UpdateCommand="UPDATE [tblLeads] SET [fldLeadName] = @fldLeadName, [fldLeadAddress] = @fldLeadAddress, [fldLeadState] = @fldLeadState, [fldLeadCity] = @fldLeadCity, [fldLeadPhone] = @fldLeadPhone, [fldLeadZip] = @fldLeadZip WHERE [fldLeadID] = @fldLeadID">
            <DeleteParameters>
                <asp:Parameter Name="fldLeadID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="fldLeadName" Type="String" />
                <asp:Parameter Name="fldLeadAddress" Type="String" />
                <asp:Parameter Name="fldLeadState" Type="String" />
                <asp:Parameter Name="fldLeadCity" Type="String" />
                <asp:Parameter Name="fldLeadPhone" Type="String" />
                <asp:Parameter Name="fldLeadZip" Type="Int32" />
                <asp:Parameter Name="fldLeadID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="fldLeadName" Type="String" />
                <asp:Parameter Name="fldLeadAddress" Type="String" />
                <asp:Parameter Name="fldLeadState" Type="String" />
                <asp:Parameter Name="fldLeadCity" Type="String" />
                <asp:Parameter Name="fldLeadPhone" Type="String" />
                <asp:Parameter Name="fldLeadZip" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
