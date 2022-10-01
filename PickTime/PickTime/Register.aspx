<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PickTime.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<link type="text/css" rel="stylesheet" href="content/create.css" />
<head runat="server">
    <title></title>
</head>
<body>
    <div class="container">
    <div class="title">Register</div>
        <br />
    <form id="formRegister" runat="server">
    <div class="user__details">
      <div class="input__box">
        <span class="details">Username</span>
        <asp:TextBox ID="TbName" runat="server" placeholder="Username"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Email</span>
        <asp:TextBox ID="TbEmail" runat="server" placeholder="Email"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Password</span>
        <asp:TextBox ID="TbPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Confirm Password</span>
        <asp:TextBox ID="TbConfirmPass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
      </div>
      <div class="input__box">
        <asp:RequiredFieldValidator ID="RequiredValidatorName" runat="server" ErrorMessage="Username is required!" ControlToValidate="TbName"></asp:RequiredFieldValidator> <br />
        <asp:RequiredFieldValidator ID="RequiredValidatorEmail" runat="server" ControlToValidate="TbEmail" ErrorMessage="Email Address is required!" ></asp:RequiredFieldValidator> <br />
        <asp:RegularExpressionValidator ID="ExpressionValidatorEmail" runat="server" ControlToValidate="TbEmail" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </div>
      <div class="input__box">
          <asp:RequiredFieldValidator ID="RequiredValidatorPassword" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password is required!"></asp:RequiredFieldValidator> <br />
          <asp:RegularExpressionValidator ID="ExpressionValidatorPass" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password must contain minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator> <br />
          <asp:RequiredFieldValidator ID="RequiredValidatorConfirmPass" runat="server" ControlToValidate="TbConfirmPass" ErrorMessage="Confirm Password is required!"></asp:RequiredFieldValidator> <br />
          <asp:CompareValidator ID="CompareValidatorConfirmPass" runat="server" ControlToCompare="TbPassword" ControlToValidate="TbConfirmPass" ErrorMessage="Password and Confrim Password must be same!"></asp:CompareValidator>
      </div>
    <div class="button">
      <asp:Button ID="Button_Register" runat="server" Text="Register" OnClick="Button_Register_Click" />
    </div>
     <div class="button">
      <a href="Login.aspx">Login</a>
    </div>
    <div class="input__box" div="message">
        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
  </form>
</div>
</body>
</html>
