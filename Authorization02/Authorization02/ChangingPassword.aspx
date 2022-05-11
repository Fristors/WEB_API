<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangingPassword.aspx.cs" Inherits="Authorization02.ChangingPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="MainStyleSheet.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;.." rel="stylesheet">
    <title>Changing the password</title>
</head>
<body class="bodyColor">
    <form id="form1" runat="server">
         <div class="registration">
             <div class="picture">
                     <img class="img_lock" src="./img/lock.png" alt="computer"/>
                 </div>
             <p class="p_author">Изменение пароля</p>      
             <input type="email" name="email" placeholder="Email" required/>
             <input type="password" name="password" placeholder="Новый пароль" required/>
             <input type="password" name="password" placeholder="Подтверждение пароля" required/>
             <button class="button_bottom" type="submit">Изменить пароль</button>
             <p class="regist">Обратно к <a href="MainForm.aspx">Авторизации</a></p>  
         </div>
    </form>
</body>
</html>
