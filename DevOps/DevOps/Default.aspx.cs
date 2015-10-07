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
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace DevOps
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populateRanking();
        }

        public void populateRanking()
        {
            if (!Page.IsPostBack)
            {

                //DataTable.dt = (string)Session["laind"];
                string connString = WebConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString;
                SqlConnection sqlConnection1 = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                cmd.CommandText = "SpTopUsers";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Connection = sqlConnection1;

                sqlConnection1.Open();

                reader = cmd.ExecuteReader();
                // Data is accessible through the DataReader object here.
                int i = 0;
                while (reader.Read())
                {
                    if(i==0)
                    {
                        Name1.Value = reader.GetValue(0).ToString();
                        Score1.Value = reader.GetValue(1).ToString();
                    }
                    else if (i == 1)
                    {
                        Name2.Value = reader.GetValue(0).ToString();
                        Score2.Value = reader.GetValue(1).ToString();
                    }
                    else
                    {
                        Name3.Value = reader.GetValue(0).ToString();
                        Score3.Value = reader.GetValue(1).ToString();
                    }
                    i++;
                }
                
                sqlConnection1.Close();
            }
        }


    }
}