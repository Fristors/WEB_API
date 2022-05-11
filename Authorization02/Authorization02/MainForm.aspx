<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="Authorization02.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="MainStyleSheet.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;.." rel="stylesheet">
    <title>Authorization</title>
</head>
<body>
    <form id="form1" runat="server">       
         <div class="container">
             <div class="common">
                 <div class="picture">
                     <img class="img" src="./img/preview.png" alt="computer"/>
                 </div>
                 <div class="authorization">
                     <p class="p_author">Авторизация</p>                    
                      <input type="email" name="email" placeholder="Email" required/>
                      <input type="password" name="password" placeholder="Пароль" required/>
                      <a href="PasswordRecovery.aspx">Забыли пароль?</a>
                      <button type="submit">Войти</button>
                     <p class="regist">Ещё нет аккаунта? <a href="Registration.aspx">Зарегистрироваться</a></p>  
                 </div>
             </div>
         </div>
    </form>
</body>
</html>
