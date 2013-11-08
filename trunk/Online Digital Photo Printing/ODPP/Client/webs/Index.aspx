<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ODPP.Client.Index" %>

<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="../user-controls/slider.ascx" TagName="slider" TagPrefix="uc3" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Online Digital Photo Printing</title>
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Add custom CSS here -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/modern-business.js"></script>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script src="../js/modernizr.custom.53451.js" type="text/javascript"></script>
</head>
<body>
    <uc1:header ID="header1" runat="server" />
    <div id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <uc3:slider ID="slider1" runat="server" />
        </div>
        <!-- Controls -->
    </div>
    <div class="section" style="padding: 0px">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <h3>
                        <i class="icon-info-sign margin-r10"></i>Introduction</h3>
                    <p>
                        Snapfish by HP is the number one online photo service, with more than 90 million
                        members in over 12 countries and 2 billion unique photos stored online. <a href="About.aspx">
                            Read more</a>
                    </p>
                </div>
                <div class="col-lg-4 col-md-4">
                    <h3>
                        <i class="icon-wrench margin-r10"></i>Services</h3>
                    <p>
                        Our mission is to help you preserve, enjoy, and make the most of your memories,
                        while providing the best value at the same time. Create a free account today to
                        see why Snapfish is the best value in photography! <a href="Services.aspx">Read more</a>
                    </p>
                </div>
                <div class="col-lg-4 col-md-4">
                    <h3>
                        <i class="icon-question-sign margin-r10"></i>FAQ</h3>
                    <p>
                        Before you take an order, may be you have some frequent questions. <a href="Faq.aspx">
                            Let's go FAQ page</a></p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.section -->
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
    <!-- /.container -->
    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
</body>
</html>
