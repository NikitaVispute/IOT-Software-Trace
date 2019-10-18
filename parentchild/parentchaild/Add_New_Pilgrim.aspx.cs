using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Add_New_Pilgrim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["action"] == "edit" && this.IsPostBack == false)
        {
            string pilgrim_id = Request.QueryString["user_id"];
            DataTable dt1 = new DataTable();
            string select_query = "Select * from data where user_id='" + pilgrim_id + "'";
            dt1 = Database.GetData(select_query);
            txtheart_rate.Text = dt1.Rows[0]["bpm"].ToString();
            txttemperature.Text = dt1.Rows[0]["temp"].ToString();
            txtlatitude.Text = dt1.Rows[0]["lat"].ToString();
            txtlongitude.Text = dt1.Rows[0]["long"].ToString();
            ddlusername.SelectedValue = dt1.Rows[0]["user_id"].ToString();




        }


    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (ddlusername.SelectedItem.Text == "Select user ")
        {
            Alert.Show("Please Select User Name");
        }
        
        if (Request.QueryString["action"] == "edit")
        {
            string pilgrim_id = Request.QueryString["pilgrim_id"];
            int temp =Convert.ToInt32(txttemperature.Text);
            int rate = Convert.ToInt32(txtheart_rate.Text);
            if (temp < 30 || temp > 40 && rate<60 ||rate>110)
            {
                //SMS Code;
                //or mail code;
            }
            string update_query = "update Pilgrim_Status set heart='" + txtheart_rate.Text + "',temperature='" + txttemperature.Text + "',latitude='" + txtlatitude.Text + "',longitude='" + txtlongitude.Text + "',date_of_entry='" + Convert.ToDateTime(DateTime.Now) + "',user_id='" + ddlusername.SelectedValue + "'where pilgrim_id='" + pilgrim_id + "'";
            Database.Updatedata(update_query);
            Response.Redirect("Manage_Pilgrims.aspx?msg=update");
        }
        else
        {
            string query = "Select * from Pilgrim_Status where user_id='" + ddlusername.SelectedValue + "'";
            DataTable invalid = Database.GetData(query);
            if (invalid.Rows.Count > 0)
            {
                Alert.Show("Pilgrim Already Exists");
            }
            else
            {

                string insert_query = "Insert Into Pilgrim_Status(heart, temperature,latitude, longitude,date_of_entry,user_id) values('" + txtheart_rate.Text + "', '" + txttemperature.Text + "','" + txtlatitude.Text + "','" + txtlongitude.Text + "','" + Convert.ToDateTime(DateTime.Now) + "','" + ddlusername.SelectedValue + "') ";
                Database.InsertData(insert_query);
                Response.Redirect("Manage_Pilgrims.aspx?msg=add");
            }

        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage_Pilgrims.aspx");
    }
}