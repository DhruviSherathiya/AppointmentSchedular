<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PickTime.Home" %>


<!DOCTYPE html>
<link type="text/css" rel="stylesheet" href="content/homeStyle.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       
        <ul>
            <li><h2>PickTime </h2></li>
            <li><a herf="#"><% Response.Write(Session["User"]); %></a></li>
            <li><a href="Logout.aspx">Logout</a></li>
            
        </ul>
    <a href="AddAppointment.aspx"><img src="images/create.png"></a>
   
    <!--<div class="card">
        <div class="card-txt">
            <h3> Project Meeting 1 </h3>
            <h4> 16:00 to 17:00 </h4>
        </div>
        <div class="date">
            <h5> 1st Oct 2022 </h5>
        </div>
    </div>-->
   
    <form id="formDisplay" runat="server">
        <div>
            <asp:GridView ID="GridViewSchedule" runat="server" CellPadding="4" CssClass="inner" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewSchedule_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" HeaderText="Cancel Appointment" ShowDeleteButton="True" />
                </Columns>
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

           <%-- <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:userConnection %>" 
                SelectCommand="SELECT * FROM [Schedules]"
                DeleteCommand="DELETE FROM [Schedules] WHERE [Id]=@Id">
            </asp:SqlDataSource>--%>

            <br />
        </div>
    </form>
        
   
    
</body>
</html>
