<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addwords.aspx.cs" Inherits="addwords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/addwords.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />
    <asp:Label ID="Label2" runat="server" Text="请输入汉字:" CssClass="character" font-Bold="True" Font-Italic="False" Font-Size="Larger"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" Width="350px" BorderStyle="Solid"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox2" Width="350px" BorderStyle="Solid"></asp:TextBox>
     &nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Height="19px" Width="201px" />
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
     <br /> <br /> <br />
    <asp:Label ID="Label4" runat="server" Text="请输入例句:" CssClass="character" font-Bold="True" Font-Italic="False" Font-Size="Larger"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox1" Width="350px" BorderStyle="Solid"></asp:TextBox><br /><br /><br />
    <asp:Label ID="Label5" runat="server" Text="请输入英文:" CssClass="character" font-Bold="True" Font-Italic="False" Font-Size="Larger"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox1" Width="350px" BorderStyle="Solid"></asp:TextBox>
     <br /><br /><br /><asp:Label ID="Label3" runat="server" Text="请输入名字:" CssClass="character" font-Bold="True" Font-Italic="False" Font-Size="Larger"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox1" Width="350px" BorderStyle="Solid"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Button" Width="102px" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml" OnTransforming="XmlDataSource1_Transforming"></asp:XmlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
</asp:Content>

