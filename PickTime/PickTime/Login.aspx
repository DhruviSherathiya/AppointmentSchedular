<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PickTime.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 263px;
            text-align: right;
        }
        .auto-style2 {
            width: 304px;
        }
        .auto-style3 {
            width: 457px;
        }
    </style>
</head>
<body>
    <form id="loginForm" runat="server">
        <asp:Label ID="LabelHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="SignIn"></asp:Label>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="ValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Username is mendatory"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password is mendatory"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="ValidatorPassword2" runat="server" ErrorMessage="Password must contain minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character " ControlToValidate="TextBoxPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"></asp:RegularExpressionValidator>
                    </td> 
                </tr>

                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
