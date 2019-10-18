using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Show_Pilgrim : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    SqlDataAdapter da=null;
    DataSet ds = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        string user_id = Session["Id"].ToString();
        //DataTable dt1 = new DataTable();
        //string select_query = "Select * from Data where id='" + user_id + "' order by [id] DESC";
        //dt1 = Database.GetData(select_query);
        //if (dt1.Rows.Count > 0)
        //{
           
           
        //    txtlatitude.Text = dt1.Rows[0]["lat"].ToString();
        //    txtlongitude.Text = dt1.Rows[0]["long"].ToString();
        //}
        //else
        //{
        //    btnmap.Enabled = false;
        //    lblmessage.Text = "No Record Found";
        //}

    }
    protected void btnmap_Click(object sender, EventArgs e)
    {
       // Response.Redirect("Map_Plot.aspx?lat=" + txtlatitude.Text + "&long=" + txtlongitude.Text);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow gr = GridView1.Rows[index];
        string query = "delete From data1 where id=" + gr.Cells[0].Text + "";
        Database.Deletedata(query);
        Alert.Show("Record Deleted Successfully");
        Response.Redirect("Show_Pilgrim.aspx");
    }
}