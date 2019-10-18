using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Manage_Pilgrims : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
    DataSet ds = null;
    SqlDataAdapter da = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["msg"] == "add")
            {
                Alert.Show("Record Added Successfully");
            }
            if (Request.QueryString["msg"] == "update")
            {
                Alert.Show("Record Updated Successfully");
            }
            if (Request.QueryString["msg"] == "delete")
            {
                Alert.Show("Record Deleted Successfully");
            }
            if (Request.QueryString["msg"] == "truncate")
            {
                Alert.Show("Truncated Successfully");
            }



        }
    }
    protected void DeleteButton_OnCommand(object sender, CommandEventArgs e)
    {
        //write delect query and pass Student id this e.commandargument

        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow gr = GridView1.Rows[index];
        string query = "delete From Pilgrim_Status where pilgrim_id=" + gr.Cells[0].Text + "";
        Database.Deletedata(query);
        Alert.Show("Record Deleted Successfully");
        Response.Redirect("Manage_Pilgrims.aspx?msg=delete");

    }
    protected void btnTruncate_Click(object sender, EventArgs e)
    {
        string query = "truncate table data";
        Database.Deletedata(query);
        Alert.Show("Record Truncated Successfully");
        Response.Redirect("Manage_Pilgrims.aspx?msg=truncate");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //da = new SqlDataAdapter("select id, bpm, hum, lat, long, DateAdded, sw, user_id from data where user_id=@user_id order by id desc",conn);
        da = new SqlDataAdapter("SELECT id,lat, long, DateAdded From data order by id desc", conn);
        //da.SelectCommand.Parameters.AddWithValue("@user_id", DropDownList1.SelectedValue);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }

    }
}
