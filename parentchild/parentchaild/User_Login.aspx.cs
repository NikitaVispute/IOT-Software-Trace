using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class User_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    SqlDataAdapter da = null;
    DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from User_Master where contact_no=@username and Password=@password", con);
        da.SelectCommand.Parameters.AddWithValue("@username", txtusername.Text);
        da.SelectCommand.Parameters.AddWithValue("@password", txtpassword.Text);
        ds = new DataSet();
        da.Fill(ds, "ul");
        if (ds.Tables["ul"].Rows.Count > 0)
        {
            string id = ds.Tables["ul"].Rows[0]["RFID"].ToString();
            Session["Id"] = id;

            Response.Redirect("User_Home.aspx");
        }
    }
}