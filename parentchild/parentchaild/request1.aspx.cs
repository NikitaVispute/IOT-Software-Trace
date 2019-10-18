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
            if (QCount == 1)
            {
                string RFID = Request.QueryString["id"].ToString();

                SqlCommand cmd = new SqlCommand("select * from Data1 where RFID=@RFID",_Conn);
                cmd.Parameters.AddWithValue("RFID", RFID);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd1 = new SqlCommand("update data1 set date2=@date2 where RFID=@RFID", _Conn);
                    cmd1.Parameters.Add("@RFID", RFID);
                    cmd1.Parameters.Add("@date2", SqlDbType.DateTime).Value = DateTime.Now.AddMinutes(330);
                    _Conn.Open();
                    cmd1.ExecuteNonQuery();
                    _Conn.Close();
                    Response.Write("success:0");
                }
                else
                {
                    SqlCommand objCmd = new SqlCommand("insert into dbo.Data1(RFID,date1)values(@RFID,@date1)",
                            _Conn);
                    objCmd.Parameters.Add("@RFID", RFID);
                    objCmd.Parameters.Add("@date1", SqlDbType.DateTime).Value = DateTime.Now.AddMinutes(330);
                   // objCmd.Parameters.Add("@date2", SqlDbType.DateTime).Value = DateTime.Now.AddMinutes(330);


                    objCmd.CommandType = CommandType.Text;
                    _Conn.Open();
                    var Result = objCmd.ExecuteNonQuery();
                    _Conn.Close();
                    Response.Write("success:1");
                }

                //SqlCommand cmdGet = new SqlCommand("select * from Data order by DateAdded desc", _Conn);
                //SqlDataAdapter daGet = new SqlDataAdapter(cmdGet);
                //DataTable dt = new DataTable();
                //daGet.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    int sw1 = Convert.ToInt32(dt.Rows[0]["sw"]);
                //    Response.Write("success:" + sw1);
                //}




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