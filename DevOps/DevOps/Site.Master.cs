using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevOps.SystemObjects;
using System.Web.Services;
using System.Web.Script.Services;







namespace DevOps
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;


        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SBObj _sbobj = new SBObj();
            Session["errMSG"] = "";
            try
            {
                if (Session["errMSG"].ToString().Equals(string.Empty))
                {

                    DataTable dt = new DataTable();
                    dt = _sbobj.getLoginDetails((string)Session["lanid"]).Tables[0];
                    if (dt.Rows.Count < 1)
                    {

                            Session["errMSG"] = "You are not authorized to use this tool.";
                            Response.Redirect("About.aspx");


                    }
                    else
                    {
                        DataSet ds = new DataSet();
                        ds = _sbobj.getLoginDetails((string)Session["lanid"]);

                        foreach (DataRow drow in ds.Tables[0].Rows)
                        {
                            lblEid.Text = drow["EID"].ToString();
                            lblType.Text = drow["AccessLevel"].ToString();
                            Session["UAL"] = lblType.Text; 
                            //(string)Session["UAL"] = lblType.Text();
                            //lblName.Text = drow["FirstName"].ToString() + ' ' + drow["LastName"].ToString();
                            //lblposition.Text = "Team Leader";
                            //Session["WDID"] = drow["WorkdayID"].ToString();
                            //Session["FLN"] = drow["FirstName"].ToString() + ' ' + drow["LastName"].ToString();


                        }
                        //TodoMgmt.Visible = false;
                    }

                }

                else
                {
                    lblEid.Text = "0";
                    //lblName.Text = "Err";
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Default.aspx");
                throw;
            }


        }

    }
}