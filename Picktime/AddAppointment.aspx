<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAppointment.aspx.cs" Inherits="PickTime.AddAppointment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<link type="text/css" rel="stylesheet" href="content/create.css" />
<head runat="server">
    <title></title>
</head>
<body>
<div class="container">
    <div class="title">Registration</div>
        <br />
  <form id="formCreate" runat="server">
    <div class="user__details">
      <div class="input__box sub">
        <span class="details">Subject </span>
        <asp:TextBox ID="TextBoxSubject" runat="server" placeholder="Subject of the meeting"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Date</span>
        <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Start Time</span>
        <asp:TextBox ID="TextBoxStartTime" runat="server" TextMode="Time"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">End Time</span>
        <asp:TextBox ID="TextBoxEndTime" runat="server" TextMode="Time"></asp:TextBox>
      </div>
    </div>
    <div class="button">
      <asp:Button ID="Button_Create" runat="server" Text="Create Schedule" OnClick="Button_Create_Click" />
    </div>
  </form>
</div>
</body>
</html>
