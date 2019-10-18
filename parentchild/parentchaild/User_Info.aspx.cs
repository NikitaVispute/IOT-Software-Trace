using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user_id = Session["Id"].ToString();
        DataTable dt1 = new DataTable();
        string select_query = "Select * from User_master where RFID='" + user_id + "'";
        dt1 = Database.GetData(select_query);
        txtfull_name0.Text = dt1.Rows[0]["full_name"].ToString();
        txtaddress.Text = dt1.Rows[0]["address"].ToString();
        txtcontact_no.Text = dt1.Rows[0]["contact_no"].ToString();
        txtemail_id.Text = dt1.Rows[0]["RFID"].ToString();
        txtPassword.Text = dt1.Rows[0]["Password"].ToString();
        txtSid.Text = dt1.Rows[0]["sid"].ToString();

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Home.aspx");
    }
}