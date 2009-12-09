<%@ Page Title="Account Creation" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="PWA.NewAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="HomeContent">
        <h1>Create Your Account:</h1>
        <p>Please enter your personal information, then press Create Account to continue.</p>
        <table>
            <tr>
                <td>
                    <font face="Helvetica" size="3">Name:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                        ControlToValidate="txtLeadName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">Address:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                        ControlToValidate="txtLeadAddress" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">City:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadCity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                        ControlToValidate="txtLeadCity" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
                    <font face="Helvetica">State:</font></td>
                <td>
                    <asp:DropDownList id="txtLeadState" runat="server">
                    
                    <asp:ListItem>Choose Your State</asp:ListItem>

                    <asp:ListItem Value="AL">Alabama</asp:ListItem>

                    <asp:ListItem Value="AK">Alaska</asp:ListItem>

                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>

                    <asp:ListItem Value="AR">Arkansas</asp:ListItem>

                    <asp:ListItem Value="CA">California</asp:ListItem>

                    <asp:ListItem Value="CO">Colorado</asp:ListItem>

                    <asp:ListItem Value="CT">Connecticut</asp:ListItem>

                    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>

                    <asp:ListItem Value="DE">Delaware</asp:ListItem>

                    <asp:ListItem Value="FL">Florida</asp:ListItem>

                    <asp:ListItem Value="GA">Georgia</asp:ListItem>

                    <asp:ListItem Value="HI">Hawaii</asp:ListItem>

                    <asp:ListItem Value="ID">Idaho</asp:ListItem>

                    <asp:ListItem Value="IL">Illinois</asp:ListItem>

                    <asp:ListItem Value="IN">Indiana</asp:ListItem>

                    <asp:ListItem Value="IA">Iowa</asp:ListItem>

                    <asp:ListItem Value="KS">Kansas</asp:ListItem>

                    <asp:ListItem Value="KY">Kentucky</asp:ListItem>

                    <asp:ListItem Value="LA">Louisiana</asp:ListItem>

                    <asp:ListItem Value="ME">Maine</asp:ListItem>

                    <asp:ListItem Value="MD">Maryland</asp:ListItem>

                    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>

                    <asp:ListItem Value="MI">Michigan</asp:ListItem>

                    <asp:ListItem Value="MN">Minnesota</asp:ListItem>

                    <asp:ListItem Value="MS">Mississippi</asp:ListItem>

                    <asp:ListItem Value="MO">Missouri</asp:ListItem>

                    <asp:ListItem Value="MT">Montana</asp:ListItem>

                    <asp:ListItem Value="NE">Nebraska</asp:ListItem>

                    <asp:ListItem Value="NV">Nevada</asp:ListItem>

                    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>

                    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>

                    <asp:ListItem Value="NM">New Mexico</asp:ListItem>

                    <asp:ListItem Value="NY">New York</asp:ListItem>

                    <asp:ListItem Value="NC">North Carolina</asp:ListItem>

                    <asp:ListItem Value="ND">North Dakota</asp:ListItem>

                    <asp:ListItem Value="OH">Ohio</asp:ListItem>

                    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>

                    <asp:ListItem Value="OR">Oregon</asp:ListItem>

                    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>

                    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>

                    <asp:ListItem Value="SC">South Carolina</asp:ListItem>

                    <asp:ListItem Value="SD">South Dakota</asp:ListItem>

                    <asp:ListItem Value="TN">Tennessee</asp:ListItem>

                    <asp:ListItem Value="TX">Texas</asp:ListItem>

                    <asp:ListItem Value="UT">Utah</asp:ListItem>

                    <asp:ListItem Value="VT">Vermont</asp:ListItem>

                    <asp:ListItem Value="VA">Virginia</asp:ListItem>

                    <asp:ListItem Value="WA">Washington</asp:ListItem>

                    <asp:ListItem Value="WV">West Virginia</asp:ListItem>

                    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>

                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>

                </asp:DropDownList>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDDLState" runat="server" 
                        ControlToValidate="txtLeadState" ErrorMessage="RequiredFieldValidator" 
                        InitialValue="Choose Your State">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            
            <tr>
                <td>
                    <font face="Helvetica">Zip:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadZip" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server" 
                        ControlToValidate="txtLeadZip" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            
            <tr>
                <td>
                    <font face="Helvetica">Phone:</font></td>
                <td>
                    <asp:TextBox ID="txtLeadPhone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvLeadPhone" runat="server" 
                        ControlToValidate="txtLeadPhone" ErrorMessage="Format: xxx-xxx-xxxx">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexPhone" runat="server" 
                        ValidationExpression="\d{3}-\d{3}-\d{4}" 
                        ControlToValidate="txtLeadPhone">Format: xxx-xxx-xxxx</asp:RegularExpressionValidator>
                    </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnCreate" runat="server" Text="Create Account" 
                onclick="btnCreate_Click" />
        </p>
        <p>
            <asp:Label ID="lblThanks" runat="server" 
            Font-Names="Helvetica" Font-Size="11pt"></asp:Label>
        </p>
    </div>
    <div class="HomeImage">

    </div>
</asp:Content>
