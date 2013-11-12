<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="ODPP.Client.Webs.header" %>
<link rel="stylesheet" href="../css/validate.css" type="text/css" />
<link rel="stylesheet" href="../css/main.css" type="text/css" />
<link href="../css/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
    $(function () {
        $(".birthday").datepicker();

        $(".birthday").datepicker("option", "showAnim", "slide");
        $(".birthday").datepicker("option", "dateFormat", "yy-mm-dd");
    });
</script>
<nav class="navbar navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
         <a class="navbar-brand" href="Index.aspx" id="logo" style="
    width: 300px;
    height: 50px;
"></a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="About.aspx">About</a></li>
            <li><a href="Services.aspx">Services</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="Faq.aspx">FAQ</a></li>
                <li><a href="Pricing.aspx">Pricing Table</a></li>
              </ul>
            </li>
            <li>
           
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                You+
                <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                     <asp:Panel ID="pnlUser" runat="server">
                    <div style="padding: 14px;overflow: hidden;width: 333px; background-color:White"><p>
                    <div class="row" style="" >
  <div class="col-md-5" style="width:140px; float:left"><asp:Image ID="imgPhoto" runat="server" class="img-thumbnail"></asp:Image></div>
  <div class="col-md-7" style="padding:0px;width:195px; float:left">
   <%ODPP.Client.obj.User obj = (ODPP.Client.obj.User)Session["user"]; %>
  <p style="font-weight:bold;margin-bottom: 0px;"> <%=obj.FirstName+" "+obj.LastName%></p>
    <div style="color:#666"><%=obj.Email%></div>
    <div style="color:#36c">
        <a href="#modalAccount" data-toggle="modal">Account</a>
        <span style="margin:0px 5px">-</span><a data-toggle="modal" href="#modalProfile">Your profile</a>
     </div>
   </div>
</div>

<div>
<form id="frmSignOut" action="../handler/Handler.aspx?f=signout" method="post">
 <button type="submit" class="btn btn-default pull-right" 
     >Sign out</button>
</form>
</div>
                        </asp:Panel> 
                      <asp:Panel ID="pnlVisitor" runat="server">
                    <div style="padding: 14px;overflow: hidden;width: 333px;background-color:White"><p>
                    <div class="row" style="" >
  <div class="col-md-5" style="width:140px; float:left"><asp:Image ID="imgPhoto2" class="img-thumbnail " runat="server" ImageUrl="../images/photo.jpg"></asp:Image></div>
  <div class="col-md-7" style="padding:0px;width:195px; float:left"><p style="font-weight:bold;margin-bottom: 0px;">Hi Guess!!</p>
    <div style="color:#666">Have a great day!</div>
    <div style="color:#36c"><a href="#modalRegister" data-toggle="modal" >Register</a><span style="margin:0px 10px">-</span>
    <a data-toggle="modal" href="#modalLogin">Login</a>
   </div>
</div>
                        </asp:Panel>
                  </ul>     
            </li>
          </ul>
        </div>
      </div>
    </nav>
<div class="modal fade" id="modalRegister" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    Register a member
                </h4>
            </div>
            <p>
                <form runat="server" name="registerForm" id="frmRegister" class="form-horizontal test-form"
                enctype="multipart/form-data">
                <div class="control-group">
                    <label class="control-label">
                        Username</label>
                    <div class="controls">
 
                                <asp:TextBox ID="txtuname" runat="server" data-validation="length" data-validation-length="5-20"
                                    data-validation-error-msg="The user name has to be a value between 5-20 characters"
                                    AutoPostBack="False" OnTextChanged="txtuname_TextChanged" />
                                <asp:Label ID="lblErrorUserName" runat="server" CssClass="error"></asp:Label>
               
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Password</label>
                    <div class="controls">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" data-validation="strength"
                            data-validation-strength="2" />
                    </div>
                </div>
                <%--<div class="control-group">
                    <label class="control-label">
                        Repeat password</label>
                    <div class="controls">
                       <input type="password" name="header1" data-validation="txtPassword" />
                    </div>
                </div>--%>
                <div class="control-group">
                    <label class="control-label">
                        First name</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="txtRFirstname" data-validation="length" data-validation-length="3-20"
                            data-validation-error-msg="The first name has to be a value between 3-20 characters" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Last name</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="txtRLastname" data-validation="length" data-validation-length="3-20"
                            data-validation-error-msg="The last name has to be a value between 3-20 characters" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Sex
                    </label>
                    <div class="controls">
                        <div class="radio pull-left p_top5 margin-r10">
                            <asp:RadioButton ID="rdoRMale" Text="Male" runat="server" GroupName="sex" Checked="true" />
                        </div>
                        <div class="radio pull-left p_top5">
                            <asp:RadioButton ID="rdoRFemale" Text="Female" runat="server" GroupName="sex" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Birth date</label>
                    <div class="controls">
                        <asp:TextBox placeholder="yyyy-mm-dd" runat="server" class="birthday" ID="txtRBirthday"
                            data-validation="length" data-validation-length="3-20" data-validation-error-msg="The birthday is not allowed empty!" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Address
                    </label>
                    <div class="controls">
                        <span id="max-chars-address2" style="background: #EEE; color: #999">100</span> chars
                        left<br>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtRAddress" data-validation="length"
                            data-validation-length="1-50" data-validation-error-msg="The address is not allowed null" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Phone
                    </label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="txtRphone" data-validation="length" data-validation-length="1-20"
                            data-validation-error-msg="The phone must be an value between 5-20 characters" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        E-mail</label>
                    <div class="controls ">
                        <asp:TextBox runat="server" ID="txtREmail" data-validation="email" placeholder="abc@example.com"
                            AutoPostBack="True" OnTextChanged="txtREmail_TextChanged" />
                        <asp:Label ID="lblErrorEmail" runat="server" CssClass="error"></asp:Label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Avatar</label>
                    <div class="controls">
                        <input type="file" id="Avatar" name="Avatar" data-validation="length" data-validation-length="1-25"
                            data-validation-error-msg="Your photo is not empty" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <asp:Button runat="server" Text="Register" class="btn btn-primary" ID="btnRegister"
                        OnClick="btnRegister_Click" />
                </div>
                </form>
            </p>
        </div>
    </div>
</div>
<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    Login</h4>
            </div>
            <p>
                <form id="Form1" class="form-horizontal test-form" action="../handler/Handler.aspx?f=login"
                method="post">
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label">
                            Username</label>
                        <div class="controls">
                            <input type="text" name="user" value="" data-validation="alphanumeric length" data-validation-length="5-20"
                                data-validation-error-msg="The user name has to be an alphanumeric between 5-20 characters" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">
                            Password</label>
                        <div class="controls">
                            <input name="password" type="password" data-validation="length" data-validation-length="1-20"
                                data-validation-error-msg="The password is not allowed empty" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">
                        </label>
                        <div class="controls">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="1" name="remember">
                                    Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <%--<div class="control-group">
                        <label class="control-label">
                            </label>
                        <div class="controls">
                           <a href="..handler/Handler.aspx?f=getAccount">Forgot password</a>
                        </div>
                    </div>--%>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <button type="submit" class="btn btn-primary">
                        Login</button>
                </div>
                </form>
            </p>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modalAccount" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    Your Account</h4>
            </div>
            <p>
                <form id="frmAccount" class="form-horizontal test-form" action="../handler/Handler.aspx?f=edit_account"
                method="post">
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label">
                            Username</label>
                        <div class="controls">
                            <input type="text" name="username" readonly="readonly" value="<%=Session["account"] %>"
                                data-validation="length" data-validation-length="5-20" data-validation-error-msg="The user name has to be a value between 5-20 characters" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">
                            Password</label>
                        <div class="controls">
                            <input type="password" name="pass_confirmation" data-validation="strength" data-validation-strength="2" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">
                            Repeat password</label>
                        <div class="controls">
                            <input type="password" name="pass" data-validation="confirmation" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <button type="submit" class="btn btn-primary">
                        Save changes</button>
                </div>
                </form>
            </p>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modalProfile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    Your Profile
                </h4>
            </div>
            <p>
                <form runat="server" class="form-horizontal test-form" id="frmViewProfile">
                <div class="control-group">
                    <label class="control-label">
                        First name</label>
                    <div class="controls">
                        <asp:TextBox ID="txtfname" runat="server" data-validation="length" data-validation-length="3-20"
                            data-validation-error-msg="The first name has to be a value between 3-20 characters" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Last name</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="txtlname" data-validation="length" data-validation-length="3-20"
                            data-validation-error-msg="The last name has to be a value between 3-20 characters" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Sex
                    </label>
                    <div class="controls">
                        <div class="radio pull-left p_top5 margin-r10">
                            <asp:RadioButton ID="rdoMale" Text="Male" runat="server" GroupName="sex" Checked="true" />
                        </div>
                        <div class="radio pull-left p_top5">
                            <asp:RadioButton ID="rdoFemale" Text="Female" runat="server" GroupName="sex" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Birth date</label>
                    <div class="controls">
                        <asp:TextBox ID="txtBirthday" placeholder="yyyy-mm-dd" runat="server" class="birthday"
                            data-validation="length" data-validation-length="1-20" data-validation-error-msg="The birthday is not allowed empty!" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Address
                    </label>
                    <div class="controls">
                        <span id="max-chars-address" style="background: #EEE; color: #999">100</span> chars
                        left<br />
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtAddress" data-validation="length"
                            data-validation-length="3-20" data-validation-error-msg="The address is not allowed empty!" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Phone
                    </label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="txtPhone" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        E-mail</label>
                    <div class="controls ">
                        <asp:TextBox runat="server" ID="txtEmail" data-validation="email" placeholder="abc@example.com"
                            OnTextChanged="txtEmail_TextChanged" />
                        <asp:Label ID="lblErrorEmail2" runat="server" CssClass="error"></asp:Label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">
                        Avatar</label>
                    <div class="controls">
                        <asp:FileUpload ID="fuAvatarEdit" runat="server" data-validation="mime size" data-validation-allowing="jpg, png"
                            data-validation-max-size="512kb" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <asp:Button runat="server" Text="Save changes" class="btn btn-primary" ID="btnViewProfile"
                        OnClick="btnViewProfile_Click" />
                </div>
                </form>
            </p>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modalPassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    Recover password</h4>
            </div>
            <p>
                <form id="Form2" class="form-horizontal test-form" action="../handler/Handler.aspx?f=recover_account"
                method="post">
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label">
                            Your email</label>
                        <div class="controls">
                            <input type="text" name="txtRecoverPassword" data-validation="email" placeholder="abc@example.com" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                    <button type="submit" class="btn btn-primary">
                        Recover</button>
                </div>
                </form>
            </p>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
