<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ODPP.Client.Index" %>

<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Modern Business - Start Bootstrap Template</title>
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Add custom CSS here -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <uc1:header ID="header1" runat="server" />
    <div id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image: url('http://placehold.it/1900x1080&text=Slide One');">
                </div>
                <div class="carousel-caption">
                    <h1>
                        Modern Business - A Bootstrap 3 Template</h1>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://placehold.it/1900x1080&text=Slide Two');">
                </div>
                <div class="carousel-caption">
                    <h1>
                        Ready to Style &amp; Add Content</h1>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://placehold.it/1900x1080&text=Slide Three');">
                </div>
                <div class="carousel-caption">
                    <h1>
                        Additional Layout Options at <a href="http://startbootstrap.com">http://startbootstrap.com</a></h1>
                </div>
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="icon-prev">
        </span></a><a class="right carousel-control" href="#myCarousel" data-slide="next"><span
            class="icon-next"></span></a>
    </div>
    <form id="form1" runat="server">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <h3>
                        <i class="icon-ok-circle"></i>Bootstrap 3 Built</h3>
                    <p>
                        The 'Modern Business' website template by <a href="http://startbootstrap.com">Start
                            Bootstrap</a> is built with <a href="http://getbootstrap.com">Bootstrap 3</a>.
                        Make sure you're up to date with latest Bootstrap documentation!</p>
                </div>
                <div class="col-lg-4 col-md-4">
                    <h3>
                        <i class="icon-pencil"></i>Ready to Style &amp; Edit</h3>
                    <p>
                        Your ready to go with this pre-built page structure, now all you need to do is add
                        your own custom stylings! You can see some free themes over at <a href="http://bootswatch.com">
                            Bootswatch</a>, or come up with your own using <a href="http://getbootstrap.com/customize/">
                                the Bootstrap customizer</a>!</p>
                </div>
                <div class="col-lg-4 col-md-4">
                    <h3>
                        <i class="icon-folder-open-alt"></i>Many Page Options</h3>
                    <p>
                        This template features many common pages that you might see on a business website.
                        Pages include: about, contact, portfolio variations, blog, pricing, FAQ, 404, services,
                        and general multi-purpose pages.</p>
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
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/modern-business.js"></script>
    </form>
</body>
</html>
