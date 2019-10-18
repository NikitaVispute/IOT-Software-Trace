using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Map_Plot : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    SqlDataAdapter da = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        //string user_id = Session["Id"].ToString();
        //DataTable dt1 = new DataTable();
        //string select_query = "Select * from Pilgrim_Status where user_id='" + user_id + "'";
        //dt1 = Database.GetData(select_query);
        txtlat.Text = Request.QueryString["lat"].ToString();
        txtlon.Text = Request.QueryString["long"].ToString();
    }

}