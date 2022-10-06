<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCalender.aspx.cs" Inherits="PickTime.DisplayCalender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="true" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="false" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>                
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                         </EditItemTemplate>
                </asp:TemplateField>
               </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
