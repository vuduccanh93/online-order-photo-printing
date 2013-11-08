<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="ODPP.Client.Webs._404" %>

<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Information - Order Digital Photo Printing</title>
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Add custom CSS here -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/modern-business.js"></script>
</head>
<body>
    <uc1:header ID="header1" runat="server" Visible="True" />
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <asp:Label ID="lblInforTitle" runat="server" Text="Label"></asp:Label>
                    <small>
                        <asp:Label ID="lblInforDetails" runat="server" Text=""></asp:Label></small></h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Information</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <asp:Panel ID="pnlOrderSuccess" runat="server" Visible="False">
                    <div class="alert alert-success">
                        Thank you for order!! <a href="Services.aspx" class="alert-link">Click here to go back.</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlLoginFailed" runat="server" Visible="False">
                    <div class="alert alert-danger">
                        Your account is not found!! <a data-toggle="modal" href="#modalLogin" class="alert-link">Try again</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlOrderFailed" runat="server" Visible="False">
                    <div class="alert alert-danger">
                        Your account bank is not found!!<br/>Verify that pin or credit card number is correct.  <a  href="Services.aspx" class="alert-link">Try again</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlNotImg" runat="server" Visible="False">
                    <div class="alert alert-danger">
                        Please verify that you have uploaded your photos before perform order.  <a  href="Services.aspx" class="alert-link">Try again</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlRegisterSuccess" runat="server" Visible="False">
                    <div class="alert alert-success">
                        You register successfully!! <a  data-toggle="modal" href="#modalLogin" class="alert-link">Click here to login.</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlContact" runat="server" Visible="False">
                    <div class="alert alert-info">
                        Thank you for sending contact to us!! <a  href="Contact.aspx" class="alert-link">Click here to come back.</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlChangePasswordSuccess" runat="server" Visible="False">
                    <div class="alert alert-info">
                        Your Account has been changed successfully! <a  href="Index.aspx" class="alert-link">Click here to come home page.</a></div>
                </asp:Panel>
                <asp:Panel ID="pnlEditProfile" runat="server" Visible="False">
                    <div class="alert alert-info">
                        Your Profile has been changed successfully! <a  href="Index.aspx" class="alert-link">Click here to come home page.</a></div>
                </asp:Panel>
            </div>
            <%--<div class="col-lg-12">
                <p class="error-404">
                    404</p>
                <p class="lead">
                    The page you're looking for could not be found.</p>
                <p>
                    Here are some helpful links to help you find what you're looking for:</p>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Other</a></li>
                </ul>
            </div>--%>
        </div>
    </div>
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
</body>
</html>
