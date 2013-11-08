<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faq.aspx.cs" Inherits="ODPP.Client.Webs.Faq" %>

<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>FAQ - Order Digital Photo Printing</title>
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
                    FAQ <small>Frequently Asked Questions</small></h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">FAQ</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel-group" id="accordion">
                    <asp:Repeater ID="rptFAQ" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            <%#Eval("Question") %>? </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <%#Eval("Answer") %>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
</body>
</html>
