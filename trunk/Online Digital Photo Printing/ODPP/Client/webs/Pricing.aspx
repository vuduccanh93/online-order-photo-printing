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
    <title>Pricing - Order Digital Photo Printing</title>
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

    <uc1:header ID="header1" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Pricing Table <small>Our Pricing Options</small></h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Pricing Table</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <asp:Repeater ID="rptPrice" runat="server">
                <HeaderTemplate>
    
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="col-sm-3">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <strong>Basic</strong>
                            </div>
                            <div class="panel-body">
                                <h3 class="panel-title price">
                                    $<%#Eval("Price")%></h3>
                            </div>
                            <ul class="list-group">
                                <li class="list-group-item">Size: <%#Eval("Size") %></li>
                            </ul>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
         
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />

 
</body>
</html>
