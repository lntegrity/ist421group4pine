<%@ Page Title="Our Menu" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="PWA.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 11px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <asp:Panel ID="pnlAccount" runat="server">                
            <font face="Helvetica" size="2">Registered? Enter your phone:</font>                                        
            <asp:TextBox ID="txtPhoneLogon" runat="server" Width="100px" 
                ValidationGroup="Logon"></asp:TextBox>
            <asp:Button ID="btnSignIn" runat="server" Text="Sign In" 
                onclick="btnSignIn_Click" ValidationGroup="Logon" /> 
            <asp:RequiredFieldValidator ID="rfvPhoneLogon" runat="server" 
                ErrorMessage="RequiredFieldValidator" Text="*" 
                ControlToValidate="txtPhoneLogon" ValidationGroup="Logon"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexPhoneLogon" runat="server" 
                ErrorMessage="RegularExpressionValidator" Text="Format: xxx-xxx-xxxx" 
                ControlToValidate="txtPhoneLogon" ValidationExpression="\d{3}-\d{3}-\d{4}" 
                ValidationGroup="Logon"></asp:RegularExpressionValidator>                                                   
            <font face="Helvetica" size="2">New user? </font>                                        
            <asp:Button ID="btnNewUser" runat="server" Text="Click Here" 
                onclick="btnNewUser_Click" ValidationGroup="None" />                
        </asp:Panel>
    <asp:Panel runat="server" ID="MenuPanel">
    <h1><asp:Label runat="server" ID="lblHeader">Our Signature Sushi Rolls:</asp:Label></h1>    
    <table class="style1" cellpadding="2" cellspacing="0">
        <tr>
        <td rowspan="8" valign="top" colspan="2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=&quot;C:\Documents and Settings\BaTz\Desktop\Takara's\PWS\App_Data\Pine.mdf&quot;;Integrated Security=True;User Instance=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT [fldItemID], [fldItemName], [fldItemPrice], [fldDescription] FROM [tblMenu]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="4" 
                EmptyDataText="There are no data records to display." ForeColor="#000066" 
                DataSourceID="SqlDataSource1">
                <RowStyle BackColor="White" ForeColor="#000066" />
                <Columns>
                    
                    <asp:BoundField DataField="fldItemID" HeaderText="Item ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="fldItemID" />
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
        <td bgcolor="#663300" height="26px"><font color="#FFFFCC" font-weight="700" 
            face="Times New Roman" size="3">Quantity</font>
        </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtUnagi" runat="server" Width="35px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="rfvUnagi" runat="server" 
                    ControlToValidate="txtUnagi" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtTuna" runat="server" Width="35px" style="margin-left: 0px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="rfvTuna" runat="server" 
                    ControlToValidate="txtTuna" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtSalmon" runat="server" Width="35px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="rfvSalmon" runat="server" 
                    ControlToValidate="txtSalmon" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtShrimp" runat="server" Width="35px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="rfvShrimp" runat="server" 
                    ControlToValidate="txtShrimp" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtChicken" runat="server" Width="35px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="rfvChicken" runat="server" 
                    ControlToValidate="txtChicken" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="rfvDragon" runat="server" 
                    ControlToValidate="txtDragon" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="rfvCalifornia" runat="server" 
                    ControlToValidate="txtCalifornia" ValidationExpression="\b\d+\b">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtDragon" runat="server" Width="35px">0</asp:TextBox>
                <asp:Button ID="btnTotal" runat="server" Text="Total" 
                    onclick="btnTotal_Click" Height="26px" Width="48px" />
            </td>
        </tr>
        <tr>
            <td height="10px">
                <asp:TextBox ID="txtCalifornia" runat="server" Width="35px">0</asp:TextBox>
                <asp:TextBox ID="TextBoxTotal" runat="server" Width="50px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
            <p style="width: 595px"><asp:Label runat="server" ID="lblRollInstruction">Please enter how many you would like in the Quantity boxes, then press Continue: <asp:Button ID="btnContinue" runat="server" Text="Continue" 
                    onclick="btnContinue_Click" Visible="False" Height="25px" Width="70px" />
            </asp:Label>
            </p>
            </td>
            
        </tr>            
    </table>
    </asp:Panel>
    </div>
    
</asp:Content>
