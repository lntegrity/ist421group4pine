<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Pine.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PWA.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomeContent">
        <h1>About the Project</h1>
            <p>Design a Web site using ASP.NET that employs a Web service, 
            utilizes Themes, and accesses a SQL database via stored procedures.</p>
        <h1>Team Takara</h1>
            <p>Ron Malcolm - <i>Team leader, front-end developer</i></p>
            <p>Ed Morgan - <i>Database design, DAL developer</i></p>
            <p>Naomi Johner - <i>Database creator, documentation</i></p>
            <p>Joe Golderer - <i>Back-end developer, site design</i></p>
    </div>
    <div class="HomeImage">
        <img src="App_Themes/SummerTheme/Images/JapaneseGarden.jpg" alt="" />
    </div>
</asp:Content>
