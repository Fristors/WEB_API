<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="Authorization02.PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="MainStyleSheet.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;.." rel="stylesheet">
    <title>Password Recovery</title>
</head>
<body class="bodyColor">
    <form id="form1" runat="server">
         <div class="registration">
             <div class="picture">
                     <img class="img_lock" src="./img/lock.png" alt="computer"/>
                 </div>
             <p class="p_author">Восстановление пароля</p>      
             <input type="email" name="email" placeholder="Email" required/>
             <button class="button_bottom" type="submit">Восстановить пароль</button>
             <p class="regist">Обратно к <a href="MainForm.aspx">Авторизации</a></p>  
         </div>
    </form>
</body>
</html>
