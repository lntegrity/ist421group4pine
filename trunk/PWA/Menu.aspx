<%@ Page Title="Our Menu" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="PWA.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 624px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
    <h1>Our Signature Sushi Rolls:</h1>
    <p>Please enter how many of each roll you would like in the Quantity column, then press Continue:
    </p>
    <div>        
        <table class="style1" cellpadding="2" cellspacing="0">
            <tr>
            <td rowspan="8" class="style2" valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PineConnectionString %>" 
                    SelectCommand="SELECT [fldItemID], [fldItemName], [fldDescription], [fldItemPrice] FROM [tblMenu]">
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." ForeColor="#000066">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:BoundField DataField="fldItemID" HeaderText="Item ID" ReadOnly="True" 
                            SortExpression="fldItemID" InsertVisible="False" />
                        <asp:BoundField DataField="fldItemName" HeaderText="Item Name" 
                            SortExpression="fldItemName" />
                        <asp:BoundField DataField="fldDescription" HeaderText="Description" 
                            SortExpression="fldDescription" />
                        <asp:BoundField DataField="fldItemPrice" HeaderText="Price" 
                            SortExpression="fldItemPrice" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#663300" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
            </td>
            <td bgcolor="#663300" height="26px"><font color="#FFFFCC" font-weight="700" face="Times New Roman" size="3">Quantity</font></td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtUnagi" runat="server" Width="35px">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtTuna" runat="server" Width="35px" style="margin-left: 0px">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtSalmon" runat="server" Width="35px">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtShrimp" runat="server" Width="35px">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtChicken" runat="server" Width="35px">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtDragon" runat="server" Width="35px">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="txtCalifornia" runat="server" Width="35px">0</asp:TextBox>
                </td>
            </tr>
        </table>
        
    </div>
        <asp:Button ID="btnContinue" runat="server" Text="Continue" 
            onclick="btnContinue_Click" />
</div>
</asp:Content>
