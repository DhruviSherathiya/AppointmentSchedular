<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="PickTime.AdminPage" %>

<!DOCTYPE html>
<link type="text/css" rel="stylesheet" href="content/homeStyle.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <ul>
        <li><h2>PickTime </h2></li>
        <li><a href="#">Profile</a></li>
        <li><a href="Logout.aspx">Logout</a></li>
    </ul>
    <br />
    <br />
     <form id="formDisplayAdmin" runat="server">
        <div>
            <asp:GridView ID="GridViewScheduleAdmin" runat="server" CellPadding="4" CssClass="inner" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewScheduleAdmin_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#9b59b6" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#9b59b6" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
