<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>Day la master page</div>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtUserName" runat="server" style="margin:10px 0px;"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" type="password" style="margin-right: 0px; margin-top: 10px; margin-bottom: 10px;"></asp:TextBox>

            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btlLogin_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
    <div>
        <asp:Repeater ID="Repeater1" runat="server">

        </asp:Repeater>
    </div>
</body>
</html>

