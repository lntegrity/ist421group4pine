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
        .style3
        {
            width: 290px;
        }
        .style4
        {
            width: 239px;
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

            <td rowspan="8" class="style2" valign="top" colspan="3">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="4" 
                    EmptyDataText="There are no data records to display." ForeColor="#000066" 
                    DataKeyNames="ItemID">
                    <RowStyle BackColor="White" ForeColor="#000066" />
                    <Columns>
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ItemID" />
                        <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                            SortExpression="ItemName" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#663300" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;G:\PSU 2008\IST 421\Projects\Takara\PWS\App_Data\Pine.mdf&quot;;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    
                    SelectCommand="SELECT [fldItemID], [fldItemName], [fldDescription], [fldItemPrice] FROM [tblMenu]">
                </asp:SqlDataSource>
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
                    <asp:TextBox ID="TextBoxTotal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3"></td>
                <td class="style4"></td>
                <td><asp:Button ID="btnContinue" runat="server" Text="Continue" 
                onclick="btnContinue_Click" />
                </td>
                <td></td>
            </tr>
        </table>
        
    </div>
        
</div>
</asp:Content>
