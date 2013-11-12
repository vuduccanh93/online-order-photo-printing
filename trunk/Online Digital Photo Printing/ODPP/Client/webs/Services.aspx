<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="ODPP.Client.Webs.Services" %>
                     
<%@ Register Src="../user-controls/header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="../user-controls/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="../upload/upload.ascx" TagName="upload" TagPrefix="uc3" %>
<%@ Register Src="../user-controls/edit.ascx" TagName="edit" TagPrefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Services - Order Online Photo Printing</title>
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Add custom CSS here -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/modern-business.js"></script>
    <script>
        $(function () {
            $("#error_text").hide();
            $("#dialog").dialog({
                autoOpen: false,
                show: {
                    effect: "blind",
                    duration: 200
                },
                hide: {
                    effect: "blind",
                    duration: 200
                }, modal: true, width: 600, title: "Your account bank"
            });

            $("#paytype").change(function () {
                if ($(this).val() == "credit") {
                    $("#dialog").dialog("open");
                }
            });
            $(".btnok").click(function () {
                if ($("#credit_number").val().length == 0 || $("#pin").val().length == 0) {
                    $("#error_text").show();
                    return;
                } else {
                    $("#error_text").hide();
                }
                var val = $("#credit_number").val();
                $(".creditNumber").val(val);
                val = $("#pin").val();
                $(".PIN").val(val);
                $("#dialog").dialog("close");
            });
            $(".btncancel").click(function () {

                $("#dialog").dialog("close");
            });
            $("#dialog").dialog({
                close: function (event, ui) {
                    if ($("#credit_number").val().length == 0 || $("#pin").val().length == 0) {
                        $("#paytype").val("money");
                    }
                }
            });
        });
    </script>
</head>
<body>
    <uc1:header ID="header1" runat="server" />
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
                <img class="img-responsive" src="../images/services.jpg" width="100%">
            </div>
        </div>
        <!-- /.row -->
        <!-- Service Paragraphs -->
        <div class="row">
            <div class="col-md-8">
                <h2 class="page-header">
                    Our Premium Services</h2>
                <p>
                    With Snapfish, you'll enjoy: Secure, unlimited online photo sharing & storage Professional-quality
                    prints for as low as 9¢ each Over 100 customizable photo gifts, from display-quality
                    photo books and posters to photo mugs and jewelry Free online photo editing tools
                    Private group rooms for sharing with friends & family Free uploading from your mobile
                    phone Subscription video sharing & storage plans</p>
            </div>
            <div class="col-md-4">
                <h2 class="page-header">
                    About pricing</h2>
                <p>
                    We have some price level for your choosing and you can view those before perform
                    order.</p>
                <a class="btn btn-primary" href="Pricing.aspx">Click Me!</a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    Take an order
                </h2>
                <asp:Panel runat="server" ID="pnlOrder">
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="service-one">
                            <p>
                                Upload images</p>
                            <form action="../upload/Handler.ashx" method="POST" enctype="multipart/form-data">
                            <uc3:upload ID="upload1" runat="server" />
                            </form>
                            <a href="#service-two" data-toggle="tab" class="btn btn-primary pull-right">Next</a>
                        </div>
                        <div class="tab-pane fade" id="service-two">
                            <p>
                                Order informations</p>
                            <p>
                                <form id="complete_test_form" class="form-horizontal well test-form" action="../handler/Handler.aspx?f=order"
                                method="post" style="overflow: hidden">
                                <div style="width: 500px; margin: 20px auto">
                                    <div class="control-group">
                                        <label class="control-label">
                                            Full name</label>
                                        <div class="controls">
                                            <input type="text" value="<%=Session["username"] %>" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">
                                            Date of Order</label>
                                        <div class="controls">
                                            <input type="text" value="<%=Session["dateOrder"] %>" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">
                                            Receiver</label>
                                        <div class="controls">
                                            <input type="text" name="receiver" data-validation="length" data-validation-length="1-50"
                                                data-validation-error-msg="The receiver is not allowed empty!">
                                        </div>
                                    </div>
                                    <%--                               <div class="control-group">
                                    <label class="control-label">
                                        total price</label>
                                    <div class="controls">
                                        <input type="text" value="100" readonly="readonly" name="price">
                                    </div>
                                </div>--%>
                                    <div class="control-group">
                                        <label class="control-label">
                                            Pay type</label>
                                        <div class="controls">
                                            <select id="paytype" name="paytype" class="form-control" style="width: auto">
                                                <option value="money">Money</option>
                                                <option value="credit">Credit Card</option>
                                            </select>
                                        </div>
                                    </div>
                                    <input type="hidden" name="creditNumber" class="creditNumber" />
                                    <input type="hidden" name="pin" class="PIN" />
                                    <div class="control-group">
                                        <label class="control-label">
                                            Phone contact
                                        </label>
                                        <div class="controls">
                                            <input type="text" data-validation="length" data-validation-length="8-20" data-validation-error-msg="The phone number must is value between 8-20 characters"
                                                name="phoneContact">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">
                                            Address
                                        </label>
                                        <div class="controls">
                                            <span id="max-chars">50</span> chars left<br />
                                            <textarea name="add" id="presentation" data-validation="length" data-validation-length="1-50"
                                                data-validation-error-msg="The address is not allowed empty!"></textarea>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">
                                            Request
                                        </label>
                                        <div class="controls">
                                            <span id="max-chars1">100</span> chars left<br />
                                            <textarea class="length-restricted" name="request" id="presentation1"></textarea>
                                        </div>
                                    </div>
                                    <p>
                                    </p>
                                    <button class="btn btn-primary pull-right margin-r10 w_auto" type="submit" style="margin-right: 77px;">
                                        Finish
                                    </button>
                                    <a class="btn btn-primary  pull-right margin-r10" data-toggle="tab" href="#service-one">
                                        Back</a>
                                </div>
                                </form>
                        </div>
                </asp:Panel>
                <asp:Panel runat="server" ID="pnlUnOrder">
                    <i class="icon-magic pull-left icon-4x"></i>
                    <div class="alert alert-danger">
                        You have to login to take an order!!</div>
                </asp:Panel>
            </div>
        </div>
    </div>
    <div class="row" style="display: none">
        <uc4:edit ID="edit1" runat="server" />
    </div>
    <!-- /.container -->
    <uc2:footer ID="footer1" runat="server" />
    <!-- /.container -->
    <div id="dialog" title="Basic dialog">
        <form role="form" id="complete_test_form" class="form-horizontal  test-form">
        <div class="control-group">
            <label class="control-label">
                PIN
            </label>
            <div class="controls">
                <input type="text" class="form-control" id="pin" data-validation="length" data-validation-length="5-20"
                    data-validation-error-msg="The user name has to be a value between 5-20 characters">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">
                Credit Card
            </label>
            <div class="controls">
                <input type="password" class="form-control" id="credit_number">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">
            </label>
            <div class="controls">
                <button type="button" class="btnok btn btn-primary">
                    Ok</button>
                <button type="button" class="btncancel btn btn-primary">
                    Cancel</button>
            </div>
        </div>
        </form>
        <div id="error_text" class="form-error help-block">
            Some information is empty, try again!!</div>
    </div>
</body>
</html>
