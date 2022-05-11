<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Authorization02.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="MainStyleSheet.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;.." rel="stylesheet">
    <title>Registration</title>
</head>
<body class="bodyColor">
    <form id="form1" runat="server">
         <div class="registration">
             <p class="p_author">Регистрация</p>      
             <input type="text" name="text" placeholder="ФИО" required/>
             <input type="email" name="email" placeholder="Email" required/>
             <input type="password" name="password" placeholder="Пароль" required/>
             <input type="password" name="password" placeholder="Подтверждение пароля" required/>
             <button class="button_bottom_top" type="submit">Зарегистрироваться</button>
             <p class="regist">Уже есть аккаунта? <a href="MainForm.aspx">Войти</a></p>  
         </div>
    </form>
</body>
</html>
