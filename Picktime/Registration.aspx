<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AppointmentSchedular.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 280px;
        }
        .auto-style3 {
            width: 231px;
        }
        .auto-style4 {
            width: 280px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="row g-3">
        <p class="text-center h3"> Registration </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblName" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredValidatorName" runat="server" ControlToValidate="TbName" ErrorMessage="Username is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbEmail" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredValidatorEmail" runat="server" ControlToValidate="TbEmail" ErrorMessage="Email Address is required!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:RegularExpressionValidator ID="ExpressionValidatorEmail" runat="server" ControlToValidate="TbEmail" ErrorMessage="Envalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="LblPassword auto-style4">
                    <asp:Label class="LblPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbPassword" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredValidatorPassword" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="ExpressionValidatorPass" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password must contain minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character." ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="LblConfirmPass auto-style4">
                    <asp:Label class="LblConfirmPass" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbConfirmPass" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredValidatorConfirmPass" runat="server" ControlToValidate="TbConfirmPass" ErrorMessage="Confirm Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidatorConfirmPass" runat="server" ControlToCompare="TbPassword" ControlToValidate="TbConfirmPass" ErrorMessage="Password and Confrim Password must be same!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="BtnSubmit" runat="server" class="btn btn-primary" OnClick="Onclick_Submit" Text="Submit" />
&nbsp;
                    <input id="BtnReset" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="msg" runat="server" ForeColor="Green"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
