<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="footer.ascx.cs" Inherits="ODPP.Client.Webs.footer" %>
<div class="container">
    <hr>
    <footer>
        <div class="row">
          <div class="col-lg-12">
            <p class="pull-right">Copyright &copy; Company 2013 by <img src="../images/logo2.PNG" style="
    margin-top: -10px;
"></p>
          </div>
        </div>
      </footer>
</div>
<script  src="http://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.1.15/jquery.form-validator.min.js"></script>
<script>

    $.validate({
        modules: 'location, date, security, file',
    });

    //        // Restrict presentation length
    $('#header1_txtAddress').restrictLength($('#max-chars-address'));
    $('#header1_txtRAddress').restrictLength($('#max-chars-address2'));
    $('#presentation').restrictLength($('#max-chars'));
    $('#contact_presentation').restrictLength($('#contact_max-chars'));
    $('#presentation1').restrictLength($('#max-chars1'));
    // Restrict presentation 
      
</script>
<script>
    $.validate({
        modules: 'security',
        onModulesLoaded: function () {
            $('input[name="header1$txtPassword"]').displayPasswordStrength(),
            $('input[name="pass_confirmation2"]').displayPasswordStrength();
            $('input[name="pass_confirmation"]').displayPasswordStrength();
          
        }
    });

    
</script>
