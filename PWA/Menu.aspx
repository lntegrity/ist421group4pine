<%@ Page Title="" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="PWA.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 757px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="Content">
    <h1>Our Signature Sushi Rolls:</h1>
<%--    <p>
        Enter the number of rolls you want next to each type:
    </p>--%>
    <div>        
        <table class="style1" cellpadding="3" cellspacing="2">
            <tr>
            <td rowspan="8" class="style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display.">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:BoundField DataField="fldItemID" HeaderText="Item ID" ReadOnly="True" 
                            SortExpression="fldItemID" />
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
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PineConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:PineConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [fldItemID], [fldItemName], [fldDescription], [fldItemPrice] FROM [tblMenu]">
                </asp:SqlDataSource>
            </td>
            <td bgcolor="#663300"><font color="black" face="Times New Roman" size="2">Quantity</font></td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="35px" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="10px">
                    <asp:TextBox ID="TextBox7" runat="server" Width="35px"></asp:TextBox>
                </td>
            </tr>
        </table>
        
    </div>
    <p>
        <asp:Button ID="btnContinue" runat="server" Text="Continue" 
            onclick="btnContinue_Click" />
    </p>
</div>
</asp:Content>
