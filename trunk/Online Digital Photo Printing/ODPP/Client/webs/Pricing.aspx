<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pricing.aspx.cs" Inherits="ODPP.Client.Webs.Pricing" %>
<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>About - Modern Business - Start Bootstrap Template</title>
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Add custom CSS here -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <uc1:header ID="header1" runat="server" />
        <div class="container">

      <div class="row">

        <div class="col-lg-12">
          <h1 class="page-header">Pricing Table <small>Our Pricing Options</small></h1>
          <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Pricing Table</li>
          </ol>
        </div>

      </div>

      <div class="row">

        <div class="col-sm-3">
          <div class="panel panel-default text-center">
            <div class="panel-heading">
              <strong>Basic</strong>
            </div>
            <div class="panel-body">
              <h3 class="panel-title price">$9<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
            </div>
            <ul class="list-group">
              <li class="list-group-item">5 Projects</li>
              <li class="list-group-item">5 GB of Storage</li>
              <li class="list-group-item">Up to 100 Users</li>
              <li class="list-group-item">10 GB Bandwidth</li>
              <li class="list-group-item">Security Suite</li>
              <li class="list-group-item"><a class="btn btn-primary">Sign Up Now!</a></li>
            </ul>
          </div>          
        </div>
        <div class="col-sm-3">
          <div class="panel panel-default text-center">
            <div class="panel-heading">
              <strong>Plus</strong>
            </div>
            <div class="panel-body">
              <h3 class="panel-title price">$19<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
            </div>
            <ul class="list-group">
              <li class="list-group-item">10 Projects</li>
              <li class="list-group-item">10 GB of Storage</li>
              <li class="list-group-item">Up to 250 Users</li>
              <li class="list-group-item">25 GB Bandwidth</li>
              <li class="list-group-item">Security Suite</li>
              <li class="list-group-item"><a class="btn btn-primary">Sign Up Now!</a></li>
            </ul>
          </div>          
        </div>
        <div class="col-sm-3">
          <div class="panel panel-default text-center">
            <div class="panel-heading">
              <strong>Premium <span class="label label-success">Best Value!</span></strong>
            </div>
            <div class="panel-body">
              <h3 class="panel-title price">$29<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
            </div>
            <ul class="list-group">
              <li class="list-group-item">Unlimited</li>
              <li class="list-group-item">50 GB of Storage</li>
              <li class="list-group-item">Up to 1000 Users</li>
              <li class="list-group-item">100 GB Bandwidth</li>
              <li class="list-group-item">Security Suite</li>
              <li class="list-group-item"><a class="btn btn-primary">Sign Up Now!</a></li>
            </ul>
          </div>          
        </div>
        <div class="col-sm-3">
          <div class="panel panel-default text-center">
            <div class="panel-heading">
              <strong>Ultimate</strong>
            </div>
            <div class="panel-body">
              <h3 class="panel-title price">$49<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
            </div>
            <ul class="list-group">
              <li class="list-group-item">Unlimited</li>
              <li class="list-group-item">150 GB of Storage</li>
              <li class="list-group-item">Unlimited</li>
              <li class="list-group-item">500 GB Bandwidth</li>
              <li class="list-group-item">Security Suite</li>
              <li class="list-group-item"><a class="btn btn-primary">Sign Up Now!</a></li>
            </ul>
          </div>          
        </div>

      </div>

    </div><!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
    </form>
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/modern-business.js"></script>
</body>
</html>
