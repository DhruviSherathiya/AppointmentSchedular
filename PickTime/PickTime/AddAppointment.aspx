﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAppointment.aspx.cs" Inherits="PickTime.AddAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

:root {
  --main-blue: #71b7e6;
  --main-purple: #9b59b6;
  --main-grey: #ccc;
  --sub-grey: #d9d9d9;
}

body {
  display: flex;
  height: 100vh;
  justify-content: center; /*center vertically */
  align-items: center; /* center horizontally */
  background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
  padding: 10px;
}
/* container and form */
.container {
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px 30px;
  border-radius: 5px;
}
.container .title {
  font-size: 25px;
  font-weight: 500;
  position: relative;
}

.container .title::before {
  content: "";
  position: absolute;
  height: 3.5px;
  width: 30px;
  background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
  left: 0;
  bottom: 0;
}

.container form .user__details {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
/* inside the form user details */
form .sub {
    width: 100%;
    margin-bottom: 15px;
}
form .user__details .input__box {
  width: calc(100% / 2 - 20px);
  margin-bottom: 15px;
}

.user__details .input__box .details {
  font-weight: 500;
  margin-bottom: 5px;
  display: block;
}
.user__details .input__box input {
  height: 45px;
  width: 100%;
  outline: none;
  border-radius: 5px;
  border: 1px solid var(--main-grey);
  padding-left: 15px;
  font-size: 16px;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

.user__details .input__box input:focus,
.user__details .input__box input:valid {
  border-color: var(--main-purple);
}

/* submit button */
form .button {
  height: 45px;
  margin: 45px 0;
}

form .button input {
  height: 100%;
  width: 100%;
  outline: none;
  color: #fff;
  border: none;
  font-size: 18px;
  font-weight: 500;
  border-radius: 5px;
  background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
  transition: all 0.3s ease;
}

form .button input:hover {
  background: linear-gradient(-135deg, var(--main-blue), var(--main-purple));
}

@media only screen and (max-width: 584px) {
  .container {
    max-width: 100%;
  }

  form .user__details .input__box {
    margin-bottom: 15px;
    width: 100%;
  }

  form .gender__details .category {
    width: 100%;
  }

  .container form .user__details {
    max-height: 300px;
    overflow-y: scroll;
  }

  .user__details::-webkit-scrollbar {
    width: 0;
  }
}

    </style>
</head>
<body>
    <div class="container">
  <div class="title">Registration</div>
        <br />
  <form id="formCreate" runat="server">
    <div class="user__details">
      <div class="input__box sub">
        <span class="details">Subject </span>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Subject of the meeting"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Date</span>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">Start Time</span>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
      </div>
      <div class="input__box">
        <span class="details">End Time</span>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Time"></asp:TextBox>
      </div>
    </div>
   
    <div class="button">
      <asp:Button ID="Button1" runat="server" Text="Create Schedule" />

    </div>
  </form>
</div>
    
</body>
</html>
