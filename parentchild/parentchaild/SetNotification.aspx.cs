using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SetNotification : System.Web.UI.Page
{
    SqlConnection _Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int QCount = Request.QueryString.Count;
            if (QCount == 4)
            {
                int min_bpm = Convert.ToInt32(Request.QueryString["min_bpm"].ToString());
                int max_bpm = Convert.ToInt32(Request.QueryString["max_bpm"].ToString());
                int min_temp = Convert.ToInt32(Request.QueryString["min_temp"].ToString());
                int max_temp = Convert.ToInt32(Request.QueryString["max_temp"].ToString());

                SqlCommand objCmd = new SqlCommand("truncate table NotificationData;insert into NotificationData(min_bpm, max_bpm, min_temp, max_temp)values(@min_bpm, @max_bpm, @min_temp, @max_temp)", _Conn);
                objCmd.Parameters.Add("@min_bpm", SqlDbType.Int).Value = min_bpm;
                objCmd.Parameters.Add("@max_bpm", SqlDbType.Int).Value = max_bpm;
                objCmd.Parameters.Add("@min_temp", SqlDbType.Int).Value = min_temp;
                objCmd.Parameters.Add("@max_temp", SqlDbType.Int).Value = max_temp;
                _Conn.Open();
                var Result = objCmd.ExecuteNonQuery();
                _Conn.Close();
                if (Result == 1)
                {
                    Response.Write("Done");
                }
            }
        }
    }
}