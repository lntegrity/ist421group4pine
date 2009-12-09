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
        .style5
        {
            width: 576px;
        }
        .style6
        {
            width: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <asp:Panel ID="pnlAccount" runat="server">                
            <font face="Helvetica" size="2">Registered? Enter your phone:</font>                                        
            <asp:TextBox ID="txtPhoneLogon" runat="server" Width="100px" 
                ValidationGroup="Logon"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhoneLogon" runat="server" 
                ErrorMessage="RequiredFieldValidator" Text="*" 
                ControlToValidate="txtPhoneLogon" ValidationGroup="Logon"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexPhoneLogon" runat="server" 
                ErrorMessage="RegularExpressionValidator" Text="Format: xxx-xxx-xxxx" 
                ControlToValidate="txtPhoneLogon" ValidationExpression="\d{3}-\d{3}-\d{4}" 
                ValidationGroup="Logon"></asp:RegularExpressionValidator>
            <asp:Button ID="btnSignIn" runat="server" Text="Sign In" 
                onclick="btnSignIn_Click" ValidationGroup="Logon" />                                        
            <font face="Helvetica" size="2">New user? </font>                                        
            <asp:Button ID="btnNewUser" runat="server" Text="Click Here" 
                onclick="btnNewUser_Click" ValidationGroup="None" />                
        </asp:Panel>
    <asp:Panel runat="server" ID="MenuPanel">
    <h1><asp:Label runat="server" ID="lblHeader">Our Signature Sushi Rolls:</asp:Label></h1>
    <p><asp:Label runat="server" ID="lblRollInstruction">Please enter how many of each roll you would like in the Quantity column, then press Continue:</asp:Label>
    </p>        
    <table class="style1" cellpadding="2" cellspacing="0">
        <tr>
        <td rowspan="8" class="style2" valign="top" colspan="2">
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
        <td bgcolor="#663300" height="26px"><font color="#FFFFCC" font-weight="700" 
            face="Times New Roman" size="3">Quantity</font>
        </td>
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
                <asp:TextBox ID="TextBoxTotal" runat="server" Width="50px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            
            </td>
            <td>
                <asp:Button ID="btnContinue" runat="server" Text="Continue" onclick="btnContinue_Click" Visible="False" />
            </td>
        </tr>            
    </table>
    </asp:Panel>
    </div>
    
</asp:Content>
