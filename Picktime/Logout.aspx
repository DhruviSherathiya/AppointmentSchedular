<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="PickTime.Logout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Logout successful."></asp:Label> <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">
            You will redirect in 5 seconds. If you didnt, click here to redirect.</asp:HyperLink>
    </div>
    </form>
</body>
</html> 