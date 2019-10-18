using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage_Users : System.Web.UI.Page
{
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
        }
    }
    protected void DeleteButton_OnCommand(object sender, CommandEventArgs e)
    {
        //write delect query and pass Student id this e.commandargument

        string query = "delete From User_Master where user_id=" + e.CommandArgument + "";
        Database.Deletedata(query);
        Alert.Show("Record Deleted Successfully");
        Response.Redirect("Manage_Users.aspx?msg=delete");

    }
}