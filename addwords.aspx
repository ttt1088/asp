<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addwords.aspx.cs" Inherits="addwords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/addwords.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />
    
    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" Width="500px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="200px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="200px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="200px"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" Height="50px" Width="200px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Button" Width="102px" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml" OnTransforming="XmlDataSource1_Transforming"></asp:XmlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
</asp:Content>

