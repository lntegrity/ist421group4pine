<%@ Page Title="Order" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="PWA.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent2">
        <h1>Confirm Your Order:</h1>
        <p>Review your order below, then press Submit Order.</p>
        <asp:DataGrid ID="Menu" runat="server" DataSourceID="SqlDataSource1" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Helvetica"
            CellPadding="4" >
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <ItemStyle BackColor="White" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:DataGrid>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;C:\Documents and Settings\Norman Hunt\Desktop\ISTPineProject\PWS\App_Data\Pine.mdf&quot;;Integrated Security=True;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT [OrderID], [MenuID], [Quantity], [TotalUnitPrice], [LeadID], [OrderSubmitTime] FROM [tblLeadOrder] WHERE ([OrderID] = @OrderID)">
                <SelectParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="OrderID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        <%--<table>
            <tr>
                <td>
                    <font face="Helvetica" size="3">Name:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">Address:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">City:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">State:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadState" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">Phone:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                <asp:RadioButton ID="rdbtnDelivery" runat="server" GroupName="Type" 
                    Text="Delivery" Checked="True" /></td>
                <td>
                <asp:RadioButton ID="rdbtnPickup" runat="server" GroupName="Type" 
                    Text="Pickup" /></td>
            </tr>
        </table>--%>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" 
                onclick="btnSubmit_Click" /></p>
    </div>
    <div class="HomeImage">
        <p>
         
        </p>
    </div>
</asp:Content>
