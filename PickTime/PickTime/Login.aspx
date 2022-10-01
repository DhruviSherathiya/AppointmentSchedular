<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PickTime.Login" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<link type="text/css" rel="stylesheet" href="content/create.css" />
<head runat="server">
    <title></title>
</head>
<body>
    <div class="container">
    <div class="title">Login</div>
        <br />
    <form id="formLogin" runat="server">
    <div class="user__details">
      <div class="input__box sub">
        <span class="details">Username</span>
        <asp:TextBox ID="TextBoxUsername" runat="server" placeholder="Username"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Password</span>
        <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
      </div>
      <div class="input__box">
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="Username is mendatory" ControlToValidate="TextBoxUsername"></asp:RequiredFieldValidator>
      </div>
      <div class="input__box">
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is mendatory" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
      </div>
    <div class="button">
      <asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Login_Click" />
    </div>
    <div class="input__box" div="message">
        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
  </form>
</div>
</body>
