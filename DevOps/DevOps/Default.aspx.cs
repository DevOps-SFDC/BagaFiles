using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevOps.SystemObjects;
using System.Web.Services;
using System.Web.Script.Services;

namespace DevOps
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string loadTop1(Int32 userno)
        {
            SBObj _sbobj = new SBObj();
            _sbobj.UserNo = userno;
            DataSet ds = new DataSet();
            try
            {
                ds.Tables.Add(_sbobj.LoadTop1());
            }
            catch (Exception ex)
            {

            }
            return ds.GetXml();
        }

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string loadTop2(Int32 userno)
        {
            SBObj _sbobj = new SBObj();
            _sbobj.UserNo = userno;
            DataSet ds = new DataSet();
            try
            {
                ds.Tables.Add(_sbobj.LoadTop2());
            }
            catch (Exception ex)
            {

            }
            return ds.GetXml();
        }

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string loadTop3(Int32 userno)
        {
            SBObj _sbobj = new SBObj();
            _sbobj.UserNo = userno;
            DataSet ds = new DataSet();
            try
            {
                ds.Tables.Add(_sbobj.LoadTop3());
            }
            catch (Exception ex)
            {

            }
            return ds.GetXml();
        }
    }
}