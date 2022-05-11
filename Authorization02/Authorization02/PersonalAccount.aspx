<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalAccount.aspx.cs" Inherits="Authorization02.PersonalAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="MainStyleSheet.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;.." rel="stylesheet">
    <title>Personal account</title>
</head>
<body class="bodyColor">
    <form id="form1" runat="server">
         <div class="registration">
             <div class="picture">
                     <img class="img_man" src="./img/man.png" alt="computer"/>
                 </div>
             <p class="p_pers">Добро пожаловать!</p>      
             <p class="p_pers">Фамилия</p>   
             <p class="p_pers">Имя</p>   
             <p class="p_pers">Отчество</p>   
             <button class="no_bottom" type="submit">Выход</button>
         </div>
    </form>
</body>
</html>
