﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ODPP.Admin.Login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Login Page</title>
        <meta name="msapplication-TileColor" content="#5bc0de"/>
        <meta name="msapplication-TileImage" content="assets/img/metis-tile.png"/>
        
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/lib/magic/magic.css">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),

m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-1669764-16', 'onokumus.com');
        ga('send', 'pageview');

</script>
  </head> 
  <body class="login">

	      
<div class="container">
    <div class="text-center">
        <img src="assets/img/logo.png" alt="Metis Logo">
    </div>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            
           
            <form action="" runat="server" class="form-signin" method="post">
                <p class="text-muted text-center">
                    Enter your username and password
                </p>
                 <asp:Label ID="txterr"  runat="server" ForeColor="Red"></asp:Label>
                <input type="text" runat="server" id="txtUser" placeholder="Username" class="form-control"/>
                <input type="password" runat="server" id="txtPass" placeholder="Password" class="form-control"/>
                <button class="btn btn-lg btn-primary btn-block" onserverclick="btnlogin_click" runat="server" >Sign in</button>
            </form>
        </div>
        <div id="forgot" class="tab-pane">
            <form action=""  class="form-signin">
                <p class="text-muted text-center">Enter your valid e-mail</p>
                <input type="text" placeholder="mail@domain.com" runat="server" id="txtEmail" required="required" class="form-control"/>
                <br>
                <button class="btn btn-lg btn-danger btn-block" type="submit">Recover Password</button>
            </form>
        </div>
        
    </div>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab" runat="server">Login</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">Forgot Password</a></li>
        </ul>
    </div>


</div> <!-- /container -->

	      
	      
      <script src="assets/lib/jquery.min.js"></script>
      <script src="assets/lib/bootstrap/js/bootstrap.js"></script>
      
      <script>
          $('.list-inline li > a').click(function () {
              var activeForm = $(this).attr('href') + ' > form';
              //console.log(activeForm);
              $(activeForm).addClass('magictime swap');
              //set timer to 1 seconds, after that, unload the magic animation
              setTimeout(function () {
                  $(activeForm).removeClass('magictime swap');
              }, 1000);
          });

        </script>
  </body>
</html>
