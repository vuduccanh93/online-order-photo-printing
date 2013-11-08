<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ODPP.Client.Webs.Contact" %>

<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact - Order Digital Photo Printing</title>
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
                    Contact <small>We'd Love to Hear From You!</small></h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
            <div class="col-lg-12">
                <!-- Embedded Google Map using an iframe - to select your location find it on Google maps and paste the link as the iframe src. If you want to use the Google Maps API instead then have at it! -->
                <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0"
                    marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed">
                </iframe>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-sm-8">
                <h3>
                    Contact to us any times</h3>
                <p>
                    Directions to Corporate Headquarters Snapfish corporate headquarters are located
                    on Second Street, at the corner of Folsom Street, in the SOMA district of San Francisco.
                    From South of San Francisco - Take 101 North to I-80 East, toward Bay Bridge. Exit
                    at 4th Street toward Embarcadero. Turn slight left onto Bryant St. Turn left onto
                    2nd St. From North of San FranciscoAfter emerging from the Broadway Tunnel, make a slight right
                    onto Columbus Ave. Turn slight right onto Montgomery St, then a sharp left onto
                    Market St. Turn right onto 2nd St.</p>
                <form role="form" method="POST" action="../handler/Handler.aspx?f=contact">
                <div class="form-group col-lg-4">
                    <label for="input1">
                        Full Name</label>
                    <input class="form-control" name="fullname" data-validation="length alphanumeric"
                        data-validation-length="5-30" data-validation-error-msg="The first name has to be an alphanumeric value between 5-30 characters">
                </div>
                <div class="form-group col-lg-4">
                    <label for="input2">
                        Email Address</label>
                    <input name="email" class="form-control" id="input2" data-validation="email">
                </div>
                <div class="form-group col-lg-4">
                    <label for="input3">
                        Phone Number</label>
                    <input type="phone" name="phone" class="form-control" id="input3">
                </div>
                <div class="clearfix">
                </div>
                <div class="form-group col-lg-12">
                    <label for="input4">
                        Message (<span id="contact_max-chars">100</span> characters left)</label>
                    <textarea class="form-control" name="contact" data-validation-length="1-100" data-validation-error-msg="Message is not allow empty"
                        id="contact_presentation"></textarea>
                </div>
                <div class="form-group col-lg-12">
                    <input type="hidden" name="save" value="contact">
                    <button type="submit" class="btn btn-primary">
                        Send</button>
                </div>
                </form>
            </div>
            <div class="col-sm-4">
                <h3>
                    Snapfish Company</h3>
                <h4>
                    Address</h4>
                <p>
                    5555 44th Street N.<br>
                    Bootstrapville, CA 32323<br>
                </p>
                <p>
                    <i class="icon-phone"></i>
                    <abbr title="Phone">
                        P</abbr>: (555) 984-3600</p>
                <p>
                    <i class="icon-envelope-alt"></i>
                    <abbr title="Email">
                        E</abbr>: <a href="mailto:binh.bkap.2011@gmail.com">feedback@snapfish.com</a></p>
                <p>
                    <i class="icon-time"></i>
                    <abbr title="Hours">
                        H</abbr>: Monday - Friday: 9:00 AM to 5:00 PM</p>
                <ul class="list-unstyled list-inline list-social-icons">
                    <li class="tooltip-social facebook-link"><a href="#facebook-page" data-toggle="tooltip"
                        data-placement="top" title="Facebook"><i class="icon-facebook-sign icon-2x"></i>
                    </a></li>
                    <li class="tooltip-social linkedin-link"><a href="#linkedin-company-page" data-toggle="tooltip"
                        data-placement="top" title="LinkedIn"><i class="icon-linkedin-sign icon-2x"></i>
                    </a></li>
                    <li class="tooltip-social twitter-link"><a href="#twitter-profile" data-toggle="tooltip"
                        data-placement="top" title="Twitter"><i class="icon-twitter-sign icon-2x"></i></a>
                    </li>
                    <li class="tooltip-social google-plus-link"><a href="#google-plus-page" data-toggle="tooltip"
                        data-placement="top" title="Google+"><i class="icon-google-plus-sign icon-2x"></i>
                    </a></li>
                </ul>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
</body>
</html>
