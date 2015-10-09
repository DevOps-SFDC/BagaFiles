<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DevOps._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="<%: ResolveUrl("~/Scripts/timepicker.js") %>"></script>
    <%-- <style>
        .tooltip-container {
            text-align: center;
        }

        #gridQuestiondetails > thead > tr:first-child {
            background: #00693C !important;
            color: #fff;
            
        }

        #gridQuestiondetails > tbody > tr:first-child {
            background: none repeat scroll 0 0 #fff !important;
            color: #333;
        }

        #timeinuserModal .modal-dialog {
            width: 50%;
        }
    </style>--%>

    <style>
        .container {
            display: flex;
        }

        .column {
            flex: 1;
            /*for demo purposes only */
            /*background: #f2f2f2;
    border: 1px solid #e6e6e6;
    box-sizing: border-box;*/
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
<%--<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Learn more…</a>
        </li>
        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>

    <script type="text/javascript">

    </script>
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><i class="fa fa-cubes fa-fw"></i>Dash Board</h1>
            </div>
        </div>
        <br />
        <div class="container">
            <div class="column column-one">
                <br />
                <br />
                <br />
                <br />
                <div class="container1">
                    <img src="Images/icon1.png" alt="icon1" style="width: 180px; height: 180px; align-content: center;">
                </div>

                <div>
                    <br />
                    <asp:Panel ID="Panel1" runat="server">
                        <label>
                            <span>Name :</span>
                            <input type="text" id="Text9" runat="server" />
                        </label>
                        <br />
                        <label>
                            <span>Score : </span>
                            <input type="text" id="Text11" runat="server" />
                        </label>
                    </asp:Panel>
                </div>
            </div>

            <div class="column column-two">


                <div class="container1">
                    <img src="Images/icon1.png" alt="icon1" style="width: 180px; height: 180px; align-content: center;">
                </div>

                <div>
                    <br />
                    <asp:Panel ID="Panel2" runat="server">
                        <label>
                            <span>Name :</span>
                            <input type="text" id="Text1" runat="server" />
                        </label>
                        <br />
                        <label>
                            <span>Score : </span>
                            <input type="text" id="Text3" runat="server" />
                        </label>
                    </asp:Panel>
                </div>

            </div>

            <div class="column column-three">
                <br />
                <br />
                <br />
                <br />
                <br />

                <div class="container1">
                    <img src="Images/icon1.png" alt="icon1" style="width: 180px; height: 180px; align-content: center;">
                </div>

                <div>
                    <br />
                    <asp:Panel ID="Panel3" runat="server">
                        <label>
                            <span>Name :</span>
                            <input type="text" id="Text4" runat="server" />
                        </label>
                        <br />
                        <label>
                            <span>Score : </span>
                            <input type="text" id="Text6" runat="server" />
                        </label>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <%--  <div class="row">
             <div class="col-lg-12">
                <br />
                <button id="addquestionaire" type="button" class="btn btn-success pull-right"><i class="fa fa-plus fa-fw"></i> Add Question</button>
                <div class="clearfix"></div>
            </div>
        </div>--%>

        <%--        <div id="questionform" class="panel panel-body" style="display: none;">
            <div class="panel-body">
            </div>
            <div class="col-xs-12">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Question :</label>
                        <textarea id="question" cols="100" rows="3" placeholder="What is your Question?" class="form-control"></textarea>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="col-xs-12">

                <div class="col-xs-3">
                    <div class="form-group">
                        <label>Answer :</label>
                        <input type="text" id="answer" class="form-control" placeholder="Your Answer.." />
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-xs-3">
                    <div class="form-group">
                        <label>Difficulty :</label>
                        <select id="difficulty" class="form-control">
                            <option value="0">Select a Difficulty..</option>
                            <option value="Easy">Easy</option>
                            <option value="Average">Average</option>
                            <option value="Hard">Hard</option>
                            <option value="Extra">Extra</option>
                        </select>
                    </div>
                </div>

            </div>


            <span id="ErrorDiv" class="Framework_Error_Message_Span"></span>
            <div class="pull-right">
                <button id="canceladdquestion" type="button" class="btn btn-success"><i class="fa fa-close fa-fw"></i>Cancel</button>
                <button id="addquestion" type="button" class="btn btn-success"><i class="fa fa-save fa-fw"></i>Add Question</button>
            </div>
        </div>--%>

        <%-- <div class="panel panel-body" id="questiondetails">
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="gridQuestiondetails" class="table table-bordered dataTable">
                                <thead>
                                    <tr>
                                        <th>Question ID</th>
                                        <th>Question</th>
                                        <th>Answer</th>
                                        <th>Diffuculty</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>--%>

        <%--        <div class="modal fade" id="timeinuserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h2 class="modal-title" id="myModalLabel">Update Questionaires</h2>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <input type="hidden" id="txtquestionid" />
                            <div class="col-lg-12">
                                <div class="col-md-12">
                                    <label>Question :</label>
                                    <textarea id="txtquestion" cols="100" rows="3" placeholder="What are your Question?" class="form-control"></textarea>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-md-6">
                                    <label>Answer :</label>
                                    <input type="text" id="txtanswer" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-4">
                                    <label>Difficulty :</label>
                                    <select id="txtdifficulty" class="form-control">
                                        <option value="0">Select a Difficulty...</option>
                                        <option value="Easy">Easy</option>
                                        <option value="Average">Average</option>
                                        <option value="Hard">Hard</option>
                                        <option value="Extra">Extra</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <br />

                    </div>

                    <div class="modal-footer">
                        <button id="closemodal" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button id="btnupdate" type="button" class="btn btn-success">Update</button>
                    </div>
                </div>
            </div>
        </div>--%>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><i class="fa fa-cubes fa-fw"></i>Activities</h1>
            </div>
        </div>
        <br />
        <br />
        <div class="container">
            <div class="col-lg-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Area Chart Example
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div id="morris-area-chart" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                            <svg height="347" version="1.1" width="650" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative;">
                                <desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.2</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="50.5" y="313" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan>
                                </text><path fill="none" stroke="#aaaaaa" d="M63,313H625" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="241" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">7,500</tspan>
                                </text><path fill="none" stroke="#aaaaaa" d="M63,241H625" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="169" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">15,000</tspan>
                                </text><path fill="none" stroke="#aaaaaa" d="M63,169H625" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="97.00000000000003" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal"><tspan dy="4.000000000000028" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">22,500</tspan>
                                </text><path fill="none" stroke="#aaaaaa" d="M63,97.00000000000003H625" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="25" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">30,000</tspan>
                                </text><path fill="none" stroke="#aaaaaa" d="M63,25H625" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="521.2041312272174" y="325.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan>
                                </text><text x="271.95747266099636" y="325.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan dy="4" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan>
                                </text><path fill="#7cb47c" stroke="none" d="M63,261.9952C78.70595382746052,256.7152,110.11786148238153,245.758,125.82381530984205,240.8752C141.52976913730257,235.9924,172.94167679222357,229.61712786885246,188.6476306196841,222.93280000000001C204.18286755771567,216.32112786885247,235.25334143377887,189.66403977900552,250.78857837181044,187.6912C266.15309842041313,185.74003977900554,296.88213851761844,205.80194285714288,312.24665856622113,207.23680000000002C327.95261239368165,208.70354285714288,359.3645200486026,198.32080000000002,375.07047387606315,199.29760000000002C390.77642770352367,200.2744,422.1883353584447,232.39063606557377,437.8942891859052,215.0512C453.4295261239368,197.90023606557378,484.5,69.70240000000001,500.0352369380316,61.33600000000001C515.5704738760631,52.969600000000014,546.6409477521263,135.85260327868852,562.1761846901579,148.12C577.8821385176184,160.52220327868852,609.2940461725395,157.04080000000002,625,160.01440000000002L625,313L63,313Z" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path><path fill="none" stroke="#4da74d" d="M63,261.9952C78.70595382746052,256.7152,110.11786148238153,245.758,125.82381530984205,240.8752C141.52976913730257,235.9924,172.94167679222357,229.61712786885246,188.6476306196841,222.93280000000001C204.18286755771567,216.32112786885247,235.25334143377887,189.66403977900552,250.78857837181044,187.6912C266.15309842041313,185.74003977900554,296.88213851761844,205.80194285714288,312.24665856622113,207.23680000000002C327.95261239368165,208.70354285714288,359.3645200486026,198.32080000000002,375.07047387606315,199.29760000000002C390.77642770352367,200.2744,422.1883353584447,232.39063606557377,437.8942891859052,215.0512C453.4295261239368,197.90023606557378,484.5,69.70240000000001,500.0352369380316,61.33600000000001C515.5704738760631,52.969600000000014,546.6409477521263,135.85260327868852,562.1761846901579,148.12C577.8821385176184,160.52220327868852,609.2940461725395,157.04080000000002,625,160.01440000000002" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="63" cy="261.9952" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="125.82381530984205" cy="240.8752" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="188.6476306196841" cy="222.93280000000001" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="250.78857837181044" cy="187.6912" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="312.24665856622113" cy="207.23680000000002" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="375.07047387606315" cy="199.29760000000002" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="437.8942891859052" cy="215.0512" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="500.0352369380316" cy="61.33600000000001" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="562.1761846901579" cy="148.12" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="625" cy="160.01440000000002" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#a7b3bc" stroke="none" d="M63,287.4064C78.70595382746052,281.632,110.11786148238153,269.3668,125.82381530984205,264.3088C141.52976913730257,259.2508,172.94167679222357,249.70782950819674,188.6476306196841,246.94240000000002C204.18286755771567,244.20702950819674,235.25334143377887,244.5294187845304,250.78857837181044,242.30560000000003C266.15309842041313,240.1062187845304,296.88213851761844,232.33412747252746,312.24665856622113,229.2496C327.95261239368165,226.09652747252747,359.3645200486026,217.22440000000003,375.07047387606315,217.35520000000002C390.77642770352367,217.48600000000002,422.1883353584447,243.66103606557377,437.8942891859052,230.296C453.4295261239368,217.07623606557377,484.5,118.85440000000001,500.0352369380316,111.01600000000002C515.5704738760631,103.17760000000003,546.6409477521263,159.3600131147541,562.1761846901579,167.58880000000002C577.8821385176184,175.9080131147541,609.2940461725395,174.8032,625,177.208L625,313L63,313Z" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path><path fill="none" stroke="#7a92a3" d="M63,287.4064C78.70595382746052,281.632,110.11786148238153,269.3668,125.82381530984205,264.3088C141.52976913730257,259.2508,172.94167679222357,249.70782950819674,188.6476306196841,246.94240000000002C204.18286755771567,244.20702950819674,235.25334143377887,244.5294187845304,250.78857837181044,242.30560000000003C266.15309842041313,240.1062187845304,296.88213851761844,232.33412747252746,312.24665856622113,229.2496C327.95261239368165,226.09652747252747,359.3645200486026,217.22440000000003,375.07047387606315,217.35520000000002C390.77642770352367,217.48600000000002,422.1883353584447,243.66103606557377,437.8942891859052,230.296C453.4295261239368,217.07623606557377,484.5,118.85440000000001,500.0352369380316,111.01600000000002C515.5704738760631,103.17760000000003,546.6409477521263,159.3600131147541,562.1761846901579,167.58880000000002C577.8821385176184,175.9080131147541,609.2940461725395,174.8032,625,177.208" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="63" cy="287.4064" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="125.82381530984205" cy="264.3088" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="188.6476306196841" cy="246.94240000000002" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="250.78857837181044" cy="242.30560000000003" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="312.24665856622113" cy="229.2496" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="375.07047387606315" cy="217.35520000000002" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="437.8942891859052" cy="230.296" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="500.0352369380316" cy="111.01600000000002" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="562.1761846901579" cy="167.58880000000002" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="625" cy="177.208" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#2577b5" stroke="none" d="M63,287.4064C78.70595382746052,287.1376,110.11786148238153,289.0264,125.82381530984205,286.3312C141.52976913730257,283.636,172.94167679222357,267.03808524590164,188.6476306196841,265.8448C204.18286755771567,264.66448524590163,235.25334143377887,279.1269834254143,250.78857837181044,276.8368C266.15309842041313,274.57178342541437,296.88213851761844,249.88250549450552,312.24665856622113,247.62400000000002C327.95261239368165,245.3153054945055,359.3645200486026,256.18,375.07047387606315,258.568C390.77642770352367,260.95599999999996,422.1883353584447,278.0732590163935,437.8942891859052,266.728C453.4295261239368,255.50605901639346,484.5,175.33960000000002,500.0352369380316,168.2992C515.5704738760631,161.2588,546.6409477521263,202.47914754098363,562.1761846901579,210.40480000000002C577.8821385176184,218.41754754098363,609.2940461725395,226.6408,625,232.0528L625,313L63,313Z" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path><path fill="none" stroke="#0b62a4" d="M63,287.4064C78.70595382746052,287.1376,110.11786148238153,289.0264,125.82381530984205,286.3312C141.52976913730257,283.636,172.94167679222357,267.03808524590164,188.6476306196841,265.8448C204.18286755771567,264.66448524590163,235.25334143377887,279.1269834254143,250.78857837181044,276.8368C266.15309842041313,274.57178342541437,296.88213851761844,249.88250549450552,312.24665856622113,247.62400000000002C327.95261239368165,245.3153054945055,359.3645200486026,256.18,375.07047387606315,258.568C390.77642770352367,260.95599999999996,422.1883353584447,278.0732590163935,437.8942891859052,266.728C453.4295261239368,255.50605901639346,484.5,175.33960000000002,500.0352369380316,168.2992C515.5704738760631,161.2588,546.6409477521263,202.47914754098363,562.1761846901579,210.40480000000002C577.8821385176184,218.41754754098363,609.2940461725395,226.6408,625,232.0528" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="63" cy="287.4064" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="125.82381530984205" cy="286.3312" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="188.6476306196841" cy="265.8448" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="250.78857837181044" cy="276.8368" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="312.24665856622113" cy="247.62400000000002" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="375.07047387606315" cy="258.568" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="437.8942891859052" cy="266.728" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="500.0352369380316" cy="168.2992" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="562.1761846901579" cy="210.40480000000002" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="625" cy="232.0528" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg><div class="morris-hover morris-default-style" style="left: 193.289px; top: 172px; display: none;">
                                    <div class="morris-hover-row-label">2010 Q4</div>
                                    <div class="morris-hover-point" style="color: #0b62a4">
                                        iPhone:
  3,767
                                    </div>
                                    <div class="morris-hover-point" style="color: #7A92A3">
                                        iPad:
  3,597
                                    </div>
                                    <div class="morris-hover-point" style="color: #4da74d">
                                        iPod Touch:
  5,689
                                    </div>
                                </div>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>

                <!-- /.panel -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-clock-o fa-fw"></i>Responsive Timeline
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <ul class="timeline">
                            <li>
                                <div class="timeline-badge">
                                    <i class="fa fa-check"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        <p>
                                            <small class="text-muted"><i class="fa fa-clock-o"></i>11 hours ago via Twitter</small>
                                        </p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero laboriosam dolor perspiciatis omnis exercitationem. Beatae, officia pariatur? Est cum veniam excepturi. Maiores praesentium, porro voluptas suscipit facere rem dicta, debitis.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-badge warning">
                                    <i class="fa fa-credit-card"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolorem quibusdam, tenetur commodi provident cumque magni voluptatem libero, quis rerum. Fugiat esse debitis optio, tempore. Animi officiis alias, officia repellendus.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium maiores odit qui est tempora eos, nostrum provident explicabo dignissimos debitis vel! Adipisci eius voluptates, ad aut recusandae minus eaque facere.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-badge danger">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus numquam facilis enim eaque, tenetur nam id qui vel velit similique nihil iure molestias aliquam, voluptatem totam quaerat, magni commodi quisquam.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates est quaerat asperiores sapiente, eligendi, nihil. Itaque quos, alias sapiente rerum quas odit! Aperiam officiis quidem delectus libero, omnis ut debitis!</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-badge info">
                                    <i class="fa fa-save"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis minus modi quam ipsum alias at est molestiae excepturi delectus nesciunt, quibusdam debitis amet, beatae consequuntur impedit nulla qui! Laborum, atque.</p>
                                        <hr>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                <i class="fa fa-gear"></i><span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#">Action</a>
                                                </li>
                                                <li><a href="#">Another action</a>
                                                </li>
                                                <li><a href="#">Something else here</a>
                                                </li>
                                                <li class="divider"></li>
                                                <li><a href="#">Separated link</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi fuga odio quibusdam. Iure expedita, incidunt unde quis nam! Quod, quisquam. Officia quam qui adipisci quas consequuntur nostrum sequi. Consequuntur, commodi.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-badge success">
                                    <i class="fa fa-graduation-cap"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>


            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-bell fa-fw"></i>Notifications Panel
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="#" class="list-group-item">
                                <i class="fa fa-comment fa-fw"></i>New Comment
                                    <span class="pull-right text-muted small"><em>4 minutes ago</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-twitter fa-fw"></i>3 New Followers
                                    <span class="pull-right text-muted small"><em>12 minutes ago</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-envelope fa-fw"></i>Message Sent
                                    <span class="pull-right text-muted small"><em>27 minutes ago</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-tasks fa-fw"></i>New Task
                                    <span class="pull-right text-muted small"><em>43 minutes ago</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-upload fa-fw"></i>Server Rebooted
                                    <span class="pull-right text-muted small"><em>11:32 AM</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-bolt fa-fw"></i>Server Crashed!
                                    <span class="pull-right text-muted small"><em>11:13 AM</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-warning fa-fw"></i>Server Not Responding
                                    <span class="pull-right text-muted small"><em>10:57 AM</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-shopping-cart fa-fw"></i>New Order Placed
                                    <span class="pull-right text-muted small"><em>9:49 AM</em>
                                    </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-money fa-fw"></i>Payment Received
                                    <span class="pull-right text-muted small"><em>Yesterday</em>
                                    </span>
                            </a>
                        </div>
                        <!-- /.list-group -->
                        <a href="#" class="btn btn-default btn-block">View All Alerts</a>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
                <!-- /.panel -->
                <div class="chat-panel panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-comments fa-fw"></i>
                        Chat
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-refresh fa-fw"></i>Refresh
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-check-circle fa-fw"></i>Available
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-times fa-fw"></i>Busy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-clock-o fa-fw"></i>Away
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-sign-out fa-fw"></i>Sign Out
                                        </a>
                                    </li>
                                </ul>
                            </div>
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
                            <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here...">
                            <span class="input-group-btn">
                                <button class="btn btn-warning btn-sm" id="btn-chat">
                                    Send
                                </button>
                            </span>
                        </div>
                    </div>
                    <!-- /.panel-footer -->
                </div>
                <!-- /.panel .chat-panel -->
            </div>



        </div>
    </div>
</asp:Content>

<%--    <script type="text/javascript">
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
                DisplayQuestionaires();

            })
        }
        $('#addquestionaire').click(function () {
            $('#questionform').slideDown('slow');
            $('#questiondetails').slideUp('slow');
        })
        $('#canceladdquestion').click(function () {
            $('#questionform').slideUp('slow');
            $('#questiondetails').slideDown('slow');
            refreshquestionform();
        })
        $('#addquestion').click(function () {
            alert1();
        })

        function refreshquestionform() {
            $('#question').val('');
            $('#answer').val('');
            $('#difficulty').val(0);

        }


        function DisplayQuestionaires() {
            $('#gridQuestiondetails > tbody > tr').remove();


            var arr = new Array();
            $.ajax({
                type: "POST",
                url: "Questionaire.aspx/displayQuestionaires",
                data: JSON.stringify({ _arr: arr }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function AjaxSucceeded(response) {
                    var xmlDoc = $.parseXML(response.d);
                    var xml = $(xmlDoc);
                    var ctm = xml.find("Table1");
                    $.each(ctm, function () {
                        var ctm = $(this);
                        var row = '<tr></tr>';
                        var col = '<td>';

                        col += $(this).find("QuestionID").text() + '</td> <td>';
                        col += $(this).find("Question").text() + '</td> <td>';
                        col += $(this).find("Answer").text() + '</td> <td>';
                        col += $(this).find("Difficulty").text() + '</td> <td>';
                        col += $(this).find("Status").text() + '</td> <td>';
                        col += '<input id="questionid" type="hidden" value="' + $(this).find("QuestionID").text() + '"/> <a id="questionedit" class="questionedit" data-toggle="modal" data-target="#timeinuserModal" href="#"><i class="fa fa-edit fa-fw"></i> Edit</a> </td>';

                        $("[id*=gridQuestiondetails] tbody").append($(row).append(col));
                    })
                    $('.questionedit').click(function () {
                        DisplayQuestionairesModal($(this).prev().val());
                    });
                    $('#gridQuestiondetails').dataTable();


                },
                error: function AjaxError(response) { alert(response.status + ' ' + response.statusText); },
                failure: function AjaxFailure(response) { alert(response.status + ' ' + response.statusText); }
            });
        }


        function AddQuestionaire() {
            var arr = new Array();
            arr[0] = $('#question').val();
            arr[1] = $('#answer').val();
            arr[2] = $('#difficulty').val();

            $.ajax({
                type: "POST",
                url: "Questionaire.aspx/addQuestionaire",
                data: JSON.stringify({ _arr: arr }),
                contentType: "application/json; charset=utf-8",
                dataTaype: "json",
                success: AjaxSucceeded,
                error: AjaxError,
                failure: AjaxFailure
            });

            function AjaxSucceeded(response) {
                $('#questionform').slideUp('slow');
                DisplayQuestionaires();
                $('#questiondetails').slideDown('slow');
                refreshquestionform();
                alert('Saved! ');
            }
            function AjaxError(response) {
                alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                alert(response.status + ' ' + response.statusText);
            }
        }


        function DisplayQuestionairesModal(questid) {
            $.ajax({
                type: "POST",
                url: "Questionaire.aspx/displayQuestionairesModal",
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

                    $('#txtquestionid').val($(this).find("QuestionID").text());
                    $('#txtquestion').val($(this).find("Question").text());
                    $('#txtanswer').val($(this).find("Answer").text());
                    $('#txtdifficulty').val($(this).find("Difficulty").text());
                });
            }
            function AjaxError(response) {
                alert(response.status + ' ' + response.statusText);
            }
            function AjaxFailure(response) {
                alert(response.status + ' ' + response.statusText);
            }
        }


        function alert1() {
            alert('1');
        }


    </script>--%>
