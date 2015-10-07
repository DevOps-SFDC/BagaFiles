using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DevOps.SystemObjects
{
    public class SBObj : DbInterface
    {
        DbInterface _dbi = new DbInterface();
        #region Script Bee


        #region Declaration
        private string _question, _answer, _difficulty, _status, _eid, _guestanswer;
        private int _questionid, _questionid1;
        #endregion

        #region Properties

        #region INT
        public Int32 QuestionID
        { set { _questionid = value; } }
        #endregion

        #region STRING
        public String Question
        { set { _question = value; } }
        public String Status
        { set { _status = value; } }
        public String Answer
        { set { _answer = value; } }
        public String Difficulty
        { set { _difficulty = value; } }
        public String EID
        { set { _eid = value; } }
        public String GuestAnswer
        { set { _guestanswer = value; } }
        #endregion

        #endregion

        #region Functions
        public DataTable DisplayQuestionaires()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            return dt = this.FGetDataTable(@"SBDisplayQuestion", oParam);
        }

        public DataTable DisplayUnansweredQuestionaires()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            return dt = this.FGetDataTable(@"SBDisplayUnansweredQuestionaires", oParam);
        }

        public DataTable DisplayAnsweredQuestionaires()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            return dt = this.FGetDataTable(@"SBDisplayAnsweredQuestionaires", oParam);
        }

        public string AddQuestionaire()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@question", _question);
            oParam.AddWithValue("@answer", _answer);
            oParam.AddWithValue("@difficulty", _difficulty);
            try
            {
                this.ExecuteInsert(@"TBInsertQuestionaire", oParam);
                msg = "Saved!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }

        public string UpdateQuestionaire()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            oParam.AddWithValue("@question", _question);
            oParam.AddWithValue("@answer", _answer);
            oParam.AddWithValue("@difficulty", _difficulty);
            try
            {
                this.ExecuteInsert(@"TBUpdateQuestionaire", oParam);
                msg = "Updated!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }

        public DataTable DisplayQuestionairesModal()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBDisplayQuestionInfo", oParam);
        }


        public string LaunchLiveQuestion()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            try
            {
                this.ExecuteInsert(@"SBLaunchLiveQuestion", oParam);
                msg = "Saved!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }

        public DataTable GetActiveQuestion()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBDisplayLiveQuestion", oParam);
        }

        public DataTable LoadActiveQuestion()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBLoadActiveQuestion", oParam);
        }

        //public DataTable GetUser()
        //{
        //    DataTable dt = new DataTable();
        //    var oParam = new SqlCommand().Parameters;
        //    oParam.AddWithValue("@eid", _eid);
        //    return dt = this.FGetDataTable(@"SBGetUser", oParam);
        //}

        public DataSet getLoginDetails(string lanid)
        {
            DataSet ds = new DataSet();
            lanid = lanid.Remove(0, lanid.IndexOf('\\') + 1);
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@eid", lanid);
            return ds = _dbi.FGetDataSet(@"SBGetUser", oParam);
        }

        public DataTable DisplayQuestionairesModalD()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBDisplayQuestionInfo", oParam);
        }

        public string DeleteQuestionaire()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            oParam.AddWithValue("@question", _question);
            oParam.AddWithValue("@answer", _answer);
            oParam.AddWithValue("@difficulty", _difficulty);
            try
            {
                this.ExecuteInsert(@"TBDeleteQuestionaire", oParam);
                msg = "Updated!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }


        public string UpdateQuestionaireNotAnswered()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            try
            {
                this.ExecuteInsert(@"SBUpdateQuestionaireNotAnswered", oParam);
                msg = "Updated!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }

        public DataTable AlertCorrectAnswer()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBDisplayQuestionInfo", oParam);
        }

        public DataTable CheckAnswer()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBDisplayQuestionInfo", oParam);
        }


        public string UpdateCorrect()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            oParam.AddWithValue("@guestanswer", _guestanswer);
            oParam.AddWithValue("@eid", _eid);
            try
            {
                this.ExecuteInsert(@"SBUpdateCorrect", oParam);
                msg = "Updated!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }

        public DataTable CheckifAnswered()
        {
            DataTable dt = new DataTable();
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            return dt = this.FGetDataTable(@"SBCheckifAnswered", oParam);
        }


        public string RecycleUA()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            try
            {
                this.ExecuteInsert(@"SBRecycleUA", oParam);
                msg = "Updated!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }

        public string RecycleA()
        {
            string msg;
            var oParam = new SqlCommand().Parameters;
            oParam.AddWithValue("@questionid", _questionid);
            try
            {
                this.ExecuteInsert(@"SBRecycleA", oParam);
                msg = "Updated!";
            }
            catch (Exception ex)
            {
                msg = ex.ToString();
            }

            return msg;
        }
        #endregion


        #endregion

    }
}