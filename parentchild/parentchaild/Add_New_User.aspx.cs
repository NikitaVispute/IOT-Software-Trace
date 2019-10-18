using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Add_New_User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["action"] == "edit" && this.IsPostBack == false)
        {
            string user_id = Request.QueryString["user_id"];
            DataTable dt1 = new DataTable();
            string select_query = "Select * from User_master where user_id='" + user_id + "'";
            dt1 = Database.GetData(select_query);
            txtfull_name.Text = dt1.Rows[0]["full_name"].ToString();
            txtaddress.Text = dt1.Rows[0]["address"].ToString();
            txtcontact_no.Text = dt1.Rows[0]["contact_no"].ToString();
            txtemail_id.Text = dt1.Rows[0]["RFID"].ToString();
            txtPassword.Text = dt1.Rows[0]["Password"].ToString();
            txtId.Text = dt1.Rows[0]["sid"].ToString();




        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["action"] == "edit")
        {
            string user_id = Request.QueryString["user_id"];
            string update_query = "update User_Master set full_name='" + txtfull_name.Text + "',address='" + txtaddress.Text + "',contact_no='" + txtcontact_no.Text + "',RFID='" + txtemail_id.Text + "',Password='" + txtPassword.Text + "',sid='" + txtId.Text + "' where user_id='" + user_id + "'";
            Database.Updatedata(update_query);
            Response.Redirect("Manage_Users.aspx?msg=update");
        }
        else
        {
            DataTable dt = new DataTable();
            string selectquery = "Select * from User_Master where RFID='" + txtemail_id.Text + "'";
            dt = Database.GetData(selectquery);

            if (dt.Rows.Count > 0)
            {
                Alert.Show("User Already Exists");
            }

            else
            {
                string insert_query = "Insert Into User_Master(full_name, address,contact_no, RFID,Password,sid) values('" + txtfull_name.Text + "', '" + txtaddress.Text + "','" + txtcontact_no.Text + "','" + txtemail_id.Text + "','" + txtPassword.Text + "','" + txtId.Text + "') ";
                Database.InsertData(insert_query);
                //SmtpClient SmtpServer = new SmtpClient();
                //MailMessage mail = new MailMessage();
                //SmtpServer.Credentials = new System.Net.NetworkCredential("project.tpo@gmail.com", "AB1234cd@");
                //SmtpServer.Port = 587;
                //SmtpServer.EnableSsl = true;
                //SmtpServer.Host = "smtp.gmail.com";
                //mail = new MailMessage();
                //mail.From = new MailAddress("project.tpo@gmail.com");
                //mail.To.Add(txtemail_id.Text);
                //mail.Subject = "File Sharing Details";              
                //SmtpServer.Send(mail);
                Response.Redirect("Manage_Users.aspx?msg=add");

            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage_Users.aspx");
    }
}