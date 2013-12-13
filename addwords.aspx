<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addwords.aspx.cs" Inherits="addwords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/addwords.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"></br>
 <div id="ddiv" >
    <asp:Label ID="Label2" runat="server" CssClass="label" Text="请输入汉字:</br>  Please input Chinese character. " Width="310px"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"  CssClass="textbox1"  BorderStyle="Solid"></asp:TextBox>
</div>
<div id ="dddiv">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上传" />
</div>
<div id="ddiv" >
    <asp:Label ID="Label3" runat="server" CssClass="label" Text="请输入拼音:</br> Please input pinyin." Width="310px"></asp:Label>
     <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox1"  BorderStyle="Solid"></asp:TextBox>
</div>
<div id="ddiv">
     <asp:Label ID="Label4" runat="server" CssClass="label" Text="请输入例句：</br> Please input sentence." Width="310px" ></asp:Label>
     <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox1"  BorderStyle="Solid" Font-Size="Large"></asp:TextBox>
</div>
<div id="ddiv">
     <asp:Label ID="Label5" runat="server" CssClass="label" Text="请输入名字：</br> Please input your name."  Width="310px"></asp:Label>
     <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox1" BorderStyle="Solid"></asp:TextBox>
</div>
<div id="ddiv">    
    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="xml提交" Width="102px" />
</div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml" OnTransforming="XmlDataSource1_Transforming"></asp:XmlDataSource>
<div id="ddiv">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
    <br />
</asp:Content>

