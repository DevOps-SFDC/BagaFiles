<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserSB.aspx.cs" Inherits="DevOps.ScriptBee.UserSB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <script src="<%: ResolveUrl("~/Scripts/timepicker.js") %>"></script>
    <style>

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-wrapper" style="padding-top: 3%">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><i class="fa fa-cubes fa-fw"></i>Script Bee</h1>
            </div>
        </div>
        <label class="text-center pull-right" id="timer" style="font:bold 16px arial, verdana;">  2:00</label><label class="text-center pull-right">Countdown:</label>
        
        <div class="row">
             <div class="col-lg-12">
            </div>
        </div>

        <div id="questionform" class="panel panel-body well well-lg">
            <div class="col-xs-12">
                <div class="col-md-12">
                   <h1> Live Session</h1>
                </div>
            </div>
            <input type="hidden" id="questionid" />
            <%--<input type="hidden" id="correctanswer"/>--%>

            <div class="col-xs-12">
                <div class="col-md-3">
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Difficulty :</label>
                        <input type="text" id="difficulty" class="form-control" placeholder="Difficulty" readonly />                        
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Points :</label>
                        <input type="text" id="points" class="form-control" placeholder="Points" readonly />
                    </div>
                </div>

            </div>
            <div class="col-xs-12">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <%--<input type="hidden" id="questionid" />--%>
                        
                        <label>Question :</label>
                        <textarea id="question" rows="6" placeholder="What is your Question?" class="form-control" readonly></textarea>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="col-xs-12">
                <div class="col-md-5">
                </div>
                <div class="col-md-3">
                    <span id="errormes" style="color:red"></span>
                </div>
            </div>



            <div class="col-xs-12">

                <div class="col-md-3">

                </div>

                <div class="col-md-5">
                    <textarea class="form-control" id="guestanswer" rows="5" placeholder="Place your Answer here !.."></textarea>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-success" id="guestsubmit">Submit</button>
                </div>

            </div>


            <span id="ErrorDiv" class="Framework_Error_Message_Span"></span>
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


                if ('<%: Session["UAL"]%>' == 'Administrator') {
                    alert('You are not Authorized to use this Tool!..');
                    window.location.href = "/Default.aspx";
                }
                else if ('<%: Session["UAL"]%>' == 'User'); {
                    $('#questionid').val(0);
                    refreshquestionform();
                    setInterval(LoadQuestdummyid, 500);
                    setInterval(CheckdbAnswered, 500);
                }
            })
        }

        function CheckdbAnswered() {
            CheckifAnswered($('#questionid').val());
        }
        function LoadQuestdummyid() {
            LoadActiveQuestion($('#questionid').val());
        }
        function refreshquestionform() {
            $('#timer').text('2:00');
            $('#questionid').val(0);
            $('#question').val('');
            $('#points').val('');
            $('#difficulty').val('');
            $('#timer').val('');
            $('#guestanswer').val('');
            $('#guestanswer').text('');
            $('#guestsubmit')[0].disabled = true;
            $('#guestanswer')[0].disabled = true;
        }

        $('#guestsubmit').click(function () {
     
                CheckAnswer($('#questionid').val());
        })



        function LoadActiveQuestion(questid) {
            $.ajax({
                type: "POST",
                url: "UserSB.aspx/loadActiveQuestion",
                data: '{questid: ' + questid + '}',
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

                    $('#questionid').val($(this).find("QuestionID").text());
                    $('#question').val($(this).find("Question").text());
                    $('#difficulty').val($(this).find("Difficulty").text());
                    $('#points').val($(this).find("Point").text());
                    $('#guestsubmit')[0].disabled = false;
                    $('#guestanswer')[0].disabled = false;
                    validatequestion();
                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }


        function CheckifAnswered(questid) {
            $.ajax({
                type: "POST",
                url: "UserSB.aspx/checkifAnswered",
                data: '{questid: ' + questid + '}',
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
                    $('#questionid').val(0);
                    killInterval();
                    refreshquestionform();
                    alert($(this).find("EID").text() + '\n Got the right answer on Question ID \n' + $(this).find("QuestionID").text() + '\n + ' + $(this).find("Points").text());

                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }


        function validatequestion() {
            if ($('#questionid').val() == 0) {
                killInterval();
            }
            else {
                timerstart();

            }
        }

        function timerstart() {
            var min = 1;
            var sec = 59;

                timer = setInterval(function () {
                    //var min = 2;
                    //var sec = 59;
                    
                    document.getElementById("timer").innerHTML = "  " + min + ":" + sec;
                    sec--;
                    if (sec == 00) {
                        min--;
                        sec = 60;
                        if (min == -1) {
                            
                            min = 1;
                            sec = 59;
                            AlertCorrectAnswer($('#questionid').val());
                            UpdateQuestionaireNotAnswered()
                            refreshquestionform();
                            
                            killInterval();
                            
                        }
                        

                    }
                }, 1000);
            }
        killInterval = function () {
            clearInterval(timer);
            
        };

        //Update the Questionaires to database if not Answered
        function UpdateQuestionaireNotAnswered() {
            var arr = new Array();
            arr[0] = $('#questionid').val();

            $.ajax({
                type: "POST",
                url: "UserSB.aspx/updateQuestionaireNotAnswered",
                data: JSON.stringify({ _arr: arr }),
                contentType: "application/json; charset=utf-8",
                dataTaype: "json",
                success: AjaxSucceeded,
                error: AjaxError,
                failure: AjaxFailure
            });

            function AjaxSucceeded(response) {
                //SUCESS SUCCESS
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }
   

        //Alert Correct Answer
        function AlertCorrectAnswer(questid) {
            $.ajax({
                type: "POST",
                url: "UserSB.aspx/alertCorrectAnswer",
                data: '{questid: ' + questid + '}',
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
                    
                    alert('Times Up!.. the Correct Answer is "' + $(this).find("Answer").text() + '"')

                    $('#timer').text('2:00');
                    AlertCorrectAnswer($('#questionid').val());
                    UpdateQuestionaireNotAnswered()

                    killInterval();
                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }

        //Check if Answer is Correct
        function CheckAnswer(questid) {
            //var _arr = new Array;
            //_arr[0] = $('#guestanswer').val();
            $.ajax({
                type: "POST",
                url: "UserSB.aspx/checkAnswer",
                data: '{questid: ' + questid + '}',
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
                    if ($('#guestanswer').val() == $(this).find("Answer").text()) {
                        UpdateCorrect();

                    }
                    else
                    {
                        $('#errormes').text('Wrong Answer');
                        $('#guestanswer').val('');
                        $('#guestanswer').focus();
                        //alert('Wrong Answer');
                    }

                });
            }
            function AjaxError(response) {
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }

        //Update Questionaire if Correct
        function UpdateCorrect() {
            var arr = new Array();
            arr[0] = $('#questionid').val();
            arr[1] = $('#guestanswer').val();
            arr[2] = '<%: Session["lanid"] %>'
            $.ajax({
                type: "POST",
                url: "UserSB.aspx/updateCorrect",
                data: JSON.stringify({ _arr: arr }),
                contentType: "application/json; charset=utf-8",
                dataTaype: "json",
                success: AjaxSucceeded,
                error: AjaxError,
                failure: AjaxFailure
            });

            function AjaxSucceeded(response) {
                //SUCESS SUCCESS
                alert('You got the Right Answer!..' + ' +' + $('#points').val());
                refreshquestionform();
                validatequestion();
                $('#errormes').text('');
            }
            function AjaxError(response) {
                alert('Your Answer is not Correct');
                //alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                //alert(response.status + ' ' + response.statusText);
            }
        }


    </script>
</asp:Content>
