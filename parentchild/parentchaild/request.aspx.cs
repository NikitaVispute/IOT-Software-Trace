using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Text;

public partial class request : System.Web.UI.Page
{
    SqlConnection _Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int QCount = Request.QueryString.Count;
            if (QCount == 2)
            {
               
                double lat = Convert.ToDouble(Request.QueryString["l1"].ToString());
                double lon = Convert.ToDouble(Request.QueryString["l2"].ToString());
        

                SqlCommand objCmd = new SqlCommand("insert into dbo.Data(lat, long,DateAdded)values(@lat, @long,@DateAdded)",
                        _Conn);
              

                if (lat == 0)
                {
                    //objCmd.Parameters.Add("@lat", SqlDbType.Float).Value = lat == 0 ? 19.0484179 : lat;
                    objCmd.Parameters.Add("@lat", SqlDbType.Float).Value = lat == 0 ? 19.3002 : lat;
                }
                else
                {
                    objCmd.Parameters.Add("@lat", SqlDbType.Float).Value = lat;
                }
                if (lon == 0)
                {
                    //objCmd.Parameters.Add("@lon", SqlDbType.Float).Value = lon == 0 ? 72.9113868 : lon;
                    objCmd.Parameters.Add("@long", SqlDbType.Float).Value = lon == 0 ? 72.8762 : lon;
                }
                else
                {
                    objCmd.Parameters.Add("@long", SqlDbType.Float).Value = lon;
                }


                //objCmd.Parameters.Add("@lat", SqlDbType.Float).Value = lat == 0 ? 19.3002 : lat;
                //objCmd.Parameters.Add("@long", SqlDbType.Float).Value = lon == 0 ? 72.8762 : lon;
                objCmd.Parameters.Add("@DateAdded", SqlDbType.DateTime).Value = DateTime.Now.AddMinutes(330);
               
                objCmd.CommandType = CommandType.Text;
                _Conn.Open();
                var Result = objCmd.ExecuteNonQuery();
                _Conn.Close();

                SqlCommand cmdGet = new SqlCommand("select * from Data order by DateAdded desc", _Conn);
                SqlDataAdapter daGet = new SqlDataAdapter(cmdGet);
                DataTable dt = new DataTable();
                daGet.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    //int sw1 = Convert.ToInt32(dt.Rows[0]["sw"]);
                    Response.Write("success:");
                  //  Response.Write("success:" + sw1);
                }




                //if (sw == 1)
                //{
                //    string url = "http://login.smsgatewayhub.com/smsapi/pushsms.aspx?user=chintan&pwd=776308&to=7738195518&sid=WEBSMS&msg=Patient,Alert messege is comming from your device. Please as soon as contact to nearest helpdesk&fl=0";
                //    var res = fileGetContents(url);
                //    // Response.Redirect(url);
                //}
                //else if (min_bpm > bpm || max_bpm < bpm)
                //{
                //    string url = "http://login.smsgatewayhub.com/smsapi/pushsms.aspx?user=chintan&pwd=776308&to=7738195518&sid=WEBSMS&msg=Patient,Alert messege is comming from your device. Please as soon as contact to nearest helpdesk&fl=0";
                //    var res = fileGetContents(url);
                //}
            }
            else
            {
                Response.Write("<script>alert('invalid parameter')</script>");
            }

        }
    }
    protected static string fileGetContents(string fileName)
    {
        var sContents = string.Empty;
        var me = string.Empty;
        try
        {
            if (fileName.ToLower().IndexOf("http:") > -1)
            {
                var wc = new WebClient();
                var response = wc.DownloadData(fileName);
                sContents = Encoding.ASCII.GetString(response);

            }
            else
            {
                var sr = new StreamReader(fileName);
                sContents = sr.ReadToEnd();
                sr.Close();
            }
        }
        catch { sContents = "unable to connect to server "; }
        return sContents;
    }
}