<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project.login" %>


<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="bootstrap.css">

<!------ Include the above in your HEAD tag ---------->

 

<form id="form1" runat="server">

 

<div class="wrapper fadeInDown">

  <div id="formContent">

    <!-- Tabs Titles -->

 

    <!-- Icon -->

    <div class="fadeIn first">

      <img src="IMG_2100.png" id="icon" alt="User Icon" />

    </div>

 

    <!-- Login Form -->

      <asp:TextBox runat="server" class="fadeIn second" id="usernameTxt" placeholder="id" OnTextChanged="usernameTxt_TextChanged"></asp:TextBox>

      <asp:TextBox runat="server" class="fadeIn third password" id="passwordTxt" placeholder="password"></asp:TextBox>

      <asp:Button ID="Button1" runat="server" Text="Log In" class="fadeIn fourth" OnClick="Button1_Click" />

   

    <!-- Remind Password -->

    <div id="formFooter">

      <a class="underlineHover" href="#">Forgot Password?</a>

    </div>

 

  </div>

</div>

</form>

 