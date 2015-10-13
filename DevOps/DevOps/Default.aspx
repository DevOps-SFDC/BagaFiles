<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DevOps._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="<%: ResolveUrl("~/Scripts/timepicker.js") %>"></script>
    <style>
        #mycalendar {
            margin: 30px;
            height: 600px;
            max-width: 500px;
        }


        .container {
            display: flex;
        }

        .column {
            flex: 1;
        }

        .column-one {
            order: 1;
        }

        .column-two {
            order: 2;
        }

        .column-three {
            order: 3;
        }


        .input {
            text-align: right;
        }

        .mainContainer {
            border-radius: 25px;
            border: 2px solid #8AC007;
            padding: 20px;
            width: 100%;
            height: 500px;
        }

        .container1 {
            border-radius: 25px;
            border: 2px solid #8AC007;
            padding: 20px;
            width: 230px;
            height: 220px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div id="page-wrapper">
<%--        <div class="row" style="padding-top: 5%;">
            <div class="col-lg-12">
                <h1 class="page-header"><i class="fa fa-cubes fa-fw" style="padding-top: 5%"></i>Dashboard</h1>
            </div>
        </div>
        <br />--%>

        <div class="row" style="padding-top: 5%;">
            <div class="col-lg-12">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="./Images/carouselimages/image1.jpg" alt="...">
                            <div class="carousel-caption">
                                ...
                            </div>
                        </div>
                        <div class="item">
                            <img src="./Images/carouselimages/image2.jpg" alt="...">
                            <div class="carousel-caption">
                                ...
                            </div>
                        </div>
                        <div class="item">
                            <img src="./Images/carouselimages/image3.jpg" alt="...">
                            <div class="carousel-caption">
                                ...
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                </div>
                
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="text-align: center;">Dashboard</h1><br />
                <div class="col-md-3">
                    <h2 class="page-header" style="padding-top: 50%; text-align: center;">Top 2</h2>
                    <img src="Images/icon1.png" alt="icon1" style="width: 180px; height: 180px; align-content: center;">
                    <br />
                    <span id="txttp2n">Top 2 Name</span>
                    <br />
                    <span id="txttp2s">Top 2 Score</span>
                </div>
                <div class="col-md-3">
                    <h2 class="page-header" style="text-align: center;">Top 1</h2>
                    <img src="Images/icon1.png" alt="icon1" style="width: 180px; height: 180px; align-content: center;">
                    <br />
                    <span id="txttp1n">Top 1 Name</span>
                    <br />
                    <span id="txttp1s">Top 1 Score</span>
                </div>
                <div class="col-md-3">
                    <h2 class="page-header" style="padding-top: 50%; text-align: center;">Top 3</h2>
                    <img src="Images/icon1.png" alt="icon1" style="width: 180px; height: 180px; align-content: center;">
                    <br />
                    <span id="txttp3n">Top 3 Name</span>
                    <br />
                    <span id="txttp3s">Top 3 Score</span>
                </div>

                <div class="col-md-3">
                    <div class="chat-panel panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-comments fa-fw"></i>
                            Chat Global

                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="chat">
                                <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                        <img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong class="primary-font">Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>12 mins ago
                                            </small>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">
                                        <img src="http://placehold.it/50/FA6F57/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>13 mins ago</small>
                                            <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                        <img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong class="primary-font">Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>14 mins ago</small>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">
                                        <img src="http://placehold.it/50/FA6F57/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>15 mins ago</small>
                                            <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                        <div class="panel-footer">
                            <div class="input-group">
                                <input id="chatmess" type="text" class="form-control input-sm" placeholder="Type your message here...">
                                <span class="input-group-btn">
                                    <button class="btn btn-warning btn-sm" id="btn-chat">
                                        Send
                                    </button>
                                </span>
                            </div>
                        </div>
                        <!-- /.panel-footer -->
                    </div>
                </div>
            </div>
        </div>


    </div>
    <script type="text/javascript">
        var prm = new Sys.WebForms.PageRequestManager.getInstance();
        prm.add_initializeRequest(initializer);
        prm.add_endRequest(ender);
        prm.add_pageLoaded(loader);

        function initializer(sender, args) {

        }

        function ender(sender, args) {

        }
        function loader(sender, args) {
            $(document).ready(function () {
                LoadTopScorers();

            })
        }
        $('.carousel').carousel({
            interval: 1000

        })
        function LoadTopScorers() {
            LoadTop1('0');
            LoadTop2('0');
            LoadTop3('0');
            $("#datetimepicker").click();
        }

        $('#datetimepicker').datepicker({

        });
        function LoadTop1(userno) {
            $.ajax({
                type: "POST",
                url: "Default.aspx/loadTop1",
                data: '{userno: ' + userno + '}',
                contentType: "application/json; charset=utf-8",
                dataTaype: "json",
                success: AjaxSucceeded,
                error: AjaxError,
                failure: AjaxFailure
            });
            function AjaxSucceeded(response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var exkeys = xml.find("Table1");
                $.each(exkeys, function () {

                    $('#txttp1n').val($(this).find("EID").text());
                    $('#txttp1n').text($(this).find("EID").text());
                    $('#txttp1s').val($(this).find("Points").text());
                    $('#txttp1s').text($(this).find("Points").text());
                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }

        function LoadTop2(userno) {
            $.ajax({
                type: "POST",
                url: "Default.aspx/loadTop2",
                data: '{userno: ' + userno + '}',
                contentType: "application/json; charset=utf-8",
                dataTaype: "json",
                success: AjaxSucceeded,
                error: AjaxError,
                failure: AjaxFailure
            });
            function AjaxSucceeded(response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var exkeys = xml.find("Table1");
                $.each(exkeys, function () {

                    $('#txttp2n').val($(this).find("EID").text());
                    $('#txttp2n').text($(this).find("EID").text());
                    $('#txttp2s').val($(this).find("Points").text());
                    $('#txttp2s').text($(this).find("Points").text());
                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }

        function LoadTop3(userno) {
            $.ajax({
                type: "POST",
                url: "Default.aspx/loadTop3",
                data: '{userno: ' + userno + '}',
                contentType: "application/json; charset=utf-8",
                dataTaype: "json",
                success: AjaxSucceeded,
                error: AjaxError,
                failure: AjaxFailure
            });
            function AjaxSucceeded(response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var exkeys = xml.find("Table1");
                $.each(exkeys, function () {

                    $('#txttp3n').val($(this).find("EID").text());
                    $('#txttp3n').text($(this).find("EID").text());
                    $('#txttp3s').val($(this).find("Points").text());
                    $('#txttp3s').text($(this).find("Points").text());
                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }

    </script>

</asp:Content>

