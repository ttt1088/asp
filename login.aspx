<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="reg">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Username用户名" Width="130px" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="220px" Font-Names="Microsoft YaHei UI" Font-Size="Medium" ForeColor="#555555"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password密码" Width="130px" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="220px" TextMode="Password" Font-Names="Microsoft YaHei UI" Font-Size="Medium" ForeColor="#555555"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Email邮箱" Width="130px" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="220px" TextMode="Email" Font-Names="Microsoft YaHei UI" Font-Size="Medium" ForeColor="#555555"></asp:TextBox>
                <br />
                <br />
                <asp:LinkButton ID="Button1" runat="server" Text="Sign up" SkinID="learnbt" CssClass="button" ForeColor="#F75A6F" Width="365px" Font-Names="Comic Sans MS" Font-Size="X-Large"/>
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Underline="False" ForeColor="Black" OnClick="LinkButton1_Click" Font-Size="Small">Already have an account,Log in  已有账号，直接登录</asp:LinkButton>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label4" runat="server" Text="Username用户名" Width="130px" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="220px" ForeColor="#555555" Font-Names="Microsoft YaHei UI" Font-Size="Medium"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Password密码" Width="130px" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Width="220px" TextMode="Password" ForeColor="#555555" Font-Names="Microsoft YaHei UI" Font-Size="Medium"></asp:TextBox>
                <br />
                <br />
                <asp:LinkButton ID="Button2" runat="server" Text="Log in" SkinID="learnbt" CssClass="button" ForeColor="#F75A6F" Width="365px" Font-Names="Comic Sans MS" Font-Size="X-Large"/>
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Underline="False" ForeColor="Black" OnClick="LinkButton2_Click" Font-Size="Small">Sign up for a new account 注册一个新账号</asp:LinkButton>
                <br />
            </asp:View>
        </asp:MultiView>
    </div>
    <script type="text/javascript">
            $(function () {
                $(".button").hover(function () {
                    $(this).stop(true, false).animate({ "opacity": 1 }, 300);
                }, function () {
                    $(this).stop(true, false).animate({ "opacity": 0.7 }, 300);
                });

            });
    </script>
</asp:Content>

