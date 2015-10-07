<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DevOps.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Images/BOB.png" type="image/png" />
    <title>DevOps Battle of the Brains</title>
    <!-- Bootstrap Core CSS -->
    <link href="~/bootstrap/css/bootstrap.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="~/bootstrap/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet" />

    <!-- Timeline CSS -->
    <link href="~/bootstrap/css/plugins/timeline.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="~/bootstrap/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Morris Charts CSS -->
    <link href="~/bootstrap/css/plugins/morris.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="~/bootstrap/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <%-- jQuery UI CSS --%>
    <link href="~/Content/jquery-ui.css" rel="stylesheet" />

    <!-- Custom Overlay -->
    <link href="~/Content/overlay.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>

    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style>
        body {
            background: url('Images/building.jpg') scroll;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            padding-bottom: 500px;
        }
        .loginContainer {
            height: 100%;
            width: 100%;
            margin-top: 1%;
        }

        .loginHeadWrapper {
            height: 2%;
            width: inherit;
        }

        .loginBodyWrapper {
            height: 95%;
            width: inherit;
        }

        .loginFormContainer {
            background: rgba(255, 255, 255, 0.98);
            border-radius: 6px;
            box-shadow: rgba(0, 0, 0, 0.45) 2px 0px 2px; 
            height: 330px;
            margin-top: 6%;
            margin-left: 25%;
            width: 290px;
        }

        .loginFormBanner {
            color: #FFF;
            font-family: 'Lato',serif;
            font-size: 60px;
            padding: 20px;
            text-shadow: 2px 0px 2px rgba(0, 0, 0, 0.8);
        }

        .loginTitle {
            color: #FFF; 
            font-family: 'Lato', serif; 
            font-size: 25px;
            font-weight: 300;
            margin-left: 8px;
            margin-top: 20px;
            text-shadow: 1px 1px 1px rgb(0, 0, 0);
        }

        .loginFormHeader {
            color: #000;
            font-family: 'Lato',serif;
            font-size: 22px;
            font-weight: 300;
            padding: 2px;
            padding-top: 20px;
            text-align: center;
        }

        .btnForgot, .btnLogin {
            margin-top: 10px;
            width: 220px;
            transition: all 0.2s ease-in-out;
        }

        .btnForgot:hover, .btnLogin:hover {
            color: #000;
            background: rgba(0, 0, 0, 0);
            border: 2px solid rgba(0, 0, 0, 1);
            font-weight: 500;
        }
    </style>
    <link href="~/bootstrap/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet" />
</head>
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
<body>
    
    <!-- Container -->
    <div class="loginContainer container-fluid">
        <div class="loginHeadWrapper">
            <img src="Images/BOB.png" style="height: 60px; width: 60px" />
            <span class="loginTitle">
                DevOps Battle of the Brains
            </span>
        </div>
        <div class="loginBodyWrapper" style="vertical-align: central">
            <div class="loginFormContainer" style="display: inline-block">
                <div class="loginFormHeader">
                    <span> <img src="Images/BOB.png" style="height: 40px; width: 40px" /> Sign in to Your Account</span>
                    <hr style="color: #000; margin-top: 5px; margin-bottom: 22px" />
                    <form id="signin" class="navbar-form navbar-right" role="form" runat="server" style="padding-left: 5px">
                    <div class="input-group" style="margin-bottom: 10px">
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-user"></i>
                        </span>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enterprise ID" ClientIDMode="Static" />
                    </div>
                    <div class="input-group" style="margin-bottom: 10px">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" ClientIDMode="Static"  />
                    </div>            
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btnLogin" Text="Sign In" OnClick="btnLogin_Click" OnClientClick="return validateCheck()" /><br /> 
                    <asp:Button ID="btnForgot" runat="server" CssClass="btn btn-info btnForgot" Text="Can&rsquo;t Remember Password" OnClick="btnForgot_Click" />
                    </form>
                </div>
            </div>
            <div class="loginFormBanner" style="display: inline-block; a">
                <span style="margin-left: 1%; margin-top: 400px;">Ready to Take <br /> &nbsp;the Challenge?</span>
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
                
            })
        }


        function validateCheck() {
            var valid = true;
            var x = document.getElementById("txtUserName").value;
            var y = document.getElementById("txtPassword").value;
            if (x == "") {
                alert("Empty Lan ID..");
                valid = false;
            }
            else if (y == "") {
                alert("Empty Password..");
                valid = false;
            }

            return valid;
            
            
         
        }

     



    </script>

</body>

</html>
