<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="content">
	    <a href="learn.aspx"><div class="item" id="item1"></div></a>
        <div class="item" id="item2"></div>
        <div class="item" id="itemsmall">
    	    <div class="item" id="item3"></div>
            <div class="item" id="item4"></div>
            <div class="item" id="item5"></div>
            <div class="item" id="item6"></div>
        </div>
    </div>

</asp:Content>


