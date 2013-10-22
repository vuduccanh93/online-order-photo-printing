<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="ODPP.Client.Webs.Services" %>

<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="../upload/upload.ascx" TagName="upload" TagPrefix="uc3" %>
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
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet"
        type="text/css">
    <link href="../upload/stepcss.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/modern-business.js"></script>
</head>
<body>
    <uc1:header ID="header1" runat="server" />
    <form action="../upload/Handler.ashx" method="POST" enctype="multipart/form-data">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Services <small>What We Do</small></h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Services</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <img class="img-responsive" src="http://placehold.it/1200x300">
            </div>
        </div>
        <!-- /.row -->
        <!-- Service Paragraphs -->
        <div class="row">
            <div class="col-md-8">
                <h2 class="page-header">
                    Our Premium Services</h2>
                <p>
                    Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores
                    nemis omnis fugats vitaes nemo minima rerums unsers sadips amets. Sed ut perspiciatis
                    unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam
                    rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae
                    vitae dicta sunt explicabo.</p>
            </div>
            <div class="col-md-4">
                <h2 class="page-header">
                    Something More</h2>
                <p>
                    Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima
                    rerums unsers sadips amets.</p>
                <a class="btn btn-primary" href="#">Click Me!</a>
            </div>
        </div>
        <!-- /.row -->
        <!-- Service Tabs -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    Take an order</h2>
                <%--         <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#service-one" data-toggle="tab">Upload your images</a></li>
                    <li><a href="#service-two" data-toggle="tab">Register an order</a></li>
                    <li><a href="#service-three" data-toggle="tab">Finish</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="service-one">
                        <uc3:upload ID="upload1" runat="server" />
                        <button type="button" class="btn btn-primary">
                            Primary</button>
                    </div>
                    <div class="tab-pane fade" id="service-two">
                        <i class="icon-gears pull-left icon-4x"></i>
                        <p>
                            Nam fringilla quis enim in eleifend. Suspendisse sed lectus mauris. Nam commodo,
                            arcu et posuere placerat, tellus tortor dignissim eros, sit amet eleifend urna lorem
                            sit amet nulla. Praesent sem nibh, vulputate nec congue eu, dapibus vitae augue.
                            Suspendisse cursus urna sit amet metus porttitor, in pharetra quam feugiat. Etiam
                            tempus euismod nulla eget pellentesque.</p>
                        <p>
                            Vestibulum laoreet molestie urna ac vehicula. Phasellus laoreet semper ipsum ac
                            gravida. Sed in varius tortor. Nullam blandit in neque quis aliquet. Fusce volutpat
                            pellentesque sem non convallis. Suspendisse sit amet magna pulvinar, gravida mauris
                            eu, tincidunt massa. Nam lectus mi, viverra non quam nec, mollis malesuada dolor.
                            Vivamus hendrerit nunc interdum turpis egestas, a lobortis odio consequat. Fusce
                            posuere purus quis ligula faucibus lacinia. Curabitur sit amet congue dolor. Duis
                            dapibus hendrerit nunc et gravida. Phasellus mollis, lectus quis ornare aliquam,
                            arcu orci posuere lectus, vehicula bibendum sem ante quis lacus.</p>
                    </div>
                    <div class="tab-pane fade" id="service-three">
                        <i class="icon-magic pull-left icon-4x"></i>
                        <p>
                            Vestibulum laoreet molestie urna ac vehicula. Phasellus laoreet semper ipsum ac
                            gravida. Sed in varius tortor. Nullam blandit in neque quis aliquet. Fusce volutpat
                            pellentesque sem non convallis. Suspendisse sit amet magna pulvinar, gravida mauris
                            eu, tincidunt massa. Nam lectus mi, viverra non quam nec, mollis malesuada dolor.
                            Vivamus hendrerit nunc interdum turpis egestas, a lobortis odio consequat. Fusce
                            posuere purus quis ligula faucibus lacinia. Curabitur sit amet congue dolor. Duis
                            dapibus hendrerit nunc et gravida. Phasellus mollis, lectus quis ornare aliquam,
                            arcu orci posuere lectus, vehicula bibendum sem ante quis lacus.</p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis
                            nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada
                            fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus
                            et netus et malesuada fames ac turpis egestas. Etiam placerat nunc ut tellus tristique,
                            non posuere neque iaculis. Fusce aliquet dui ut felis rhoncus, vitae molestie mauris
                            auctor. Donec pellentesque feugiat leo a adipiscing. Pellentesque quis tristique
                            eros, sed rutrum mauris.</p>
                    </div>
                </div>--%>
                <form id="form-3" action="#">
                <h3>
                    Account</h3>
                <fieldset>
                    <legend>Account Information</legend>
                    <label for="userName-2">
                        User name *</label>
                    <input id="userName-2" name="userName" type="text" class="required">
                    <label for="password-2">
                        Password *</label>
                    <input id="password-2" name="password" type="text" class="required">
                    <label for="confirm-2">
                        Confirm Password *</label>
                    <input id="confirm-2" name="confirm" type="text" class="required">
                    <p>
                        (*) Mandatory</p>
                </fieldset>
                <h3>
                    Profile</h3>
                <fieldset>
                    <legend>Profile Information</legend>
                    <label for="name-2">
                        First name *</label>
                    <input id="name-2" name="name" type="text" class="required">
                    <label for="surname-2">
                        Last name *</label>
                    <input id="surname-2" name="surname" type="text" class="required">
                    <label for="email-2">
                        Email *</label>
                    <input id="email-2" name="email" type="text" class="required email">
                    <label for="address-2">
                        Address</label>
                    <input id="address-2" name="address" type="text">
                    <label for="age-2">
                        Age (The warning step will show up if age is less than 18) *</label>
                    <input id="age-2" name="age" type="text" class="required number">
                    <p>
                        (*) Mandatory</p>
                </fieldset>
                <h3>
                    Warning</h3>
                <fieldset>
                    <legend>You are to young</legend>
                    <p>
                        Please go away ;-)</p>
                </fieldset>
                <h3>
                    Finish</h3>
                <fieldset>
                    <legend>Terms and Conditions</legend>
                    <input id="acceptTerms-2" name="acceptTerms" type="checkbox" class="required">
                    <label for="acceptTerms-2">
                        I agree with the Terms and Conditions.</label>
                </fieldset>
                </form>
                <script src="../upload/stepjs.js"></script>
                <script>
                    $(function () {
                        $("#lefthand-nav").affix({
                            offset: {
                                top: function () {
                                    return $("#topbar").outerHeight() + $("#banner").outerHeight();
                                }
                            }
                        });

                        prettyPrint();

                        function errorPlacement(error, element) {
                            element.before(error);

                            //element.popover({
                            //    content: error.text(),
                            //    placement: function ()
                            //    {
                            //        return (element.parents(".content").width() >= 550) ? "right" : "top";
                            //    },
                            //    trigger: "focus hover"
                            //});
                            //$(".popover-content", element.next(".popover")).empty().prepend(error);
                        }



                        $("#form-3").steps({
                            headerTag: "h3",
                            bodyTag: "fieldset",
                            transitionEffect: "slideLeft",
                            onStepChanging: function (event, currentIndex, newIndex) {
                                // Allways allow previous action even if the current form is not valid!
                                if (currentIndex > newIndex) {
                                    return true;
                                }

                                // Forbid next action on "Warning" step if the user is to young
                                if (newIndex === 3 && Number($("#age-2").val()) < 18) {
                                    return false;
                                }

                                // Needed in some cases if the user went back (clean up)
                                if (currentIndex < newIndex) {
                                    // To remove error styles
                                    $("#form-3 .body:eq(" + newIndex + ") label.error").remove();
                                    $("#form-3 .body:eq(" + newIndex + ") .error").removeClass("error");
                                }

                                $("#form-3").validate().settings.ignore = ":disabled,:hidden";
                                return $("#form-3").valid();
                            },
                            onStepChanged: function (event, currentIndex, priorIndex) {
                                // Used to skip the "Warning" step if the user is old enough.
                                if (currentIndex === 2 && Number($("#age-2").val()) >= 18) {
                                    $("#form-3").steps("next");
                                }

                                // Used to skip the "Warning" step if the user is old enough and wants to the previous step.
                                if (currentIndex === 2 && priorIndex === 3) {
                                    $("#form-3").steps("previous");
                                }
                            },
                            onFinishing: function (event, currentIndex) {
                                $("#form-3").validate().settings.ignore = ":disabled";
                                return $("#form-3").valid();
                            },
                            onFinished: function (event, currentIndex) {
                                alert("Submitted!");
                            }
                        }).validate({
                            errorPlacement: errorPlacement,
                            rules: {
                                confirm: {
                                    equalTo: "#password-2"
                                }
                            }
                        });


                    });
                </script>
            </div>
        </div>
        <!-- /.row -->
        <!-- Service Images -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    Service Images</h2>
            </div>
            <div class="col-sm-4">
                <img class="img-responsive" src="http://placehold.it/750x450">
                <h3>
                    Service One</h3>
                <p>
                    Service one description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst.</p>
                <a class="btn btn-link btn-sm pull-right">More <i class="icon-angle-right"></i></a>
            </div>
            <div class="col-sm-4">
                <img class="img-responsive" src="http://placehold.it/750x450">
                <h3>
                    Service Two</h3>
                <p>
                    Service two description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst.</p>
                <a class="btn btn-link btn-sm pull-right">More <i class="icon-angle-right"></i></a>
            </div>
            <div class="col-sm-4">
                <img class="img-responsive" src="http://placehold.it/750x450">
                <h3>
                    Service Three</h3>
                <p>
                    Service three description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst.</p>
                <a class="btn btn-link btn-sm pull-right">More <i class="icon-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
    <!-- /.container -->
    </form>
</body>
</html>
