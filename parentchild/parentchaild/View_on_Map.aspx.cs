using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class View_on_Map : System.Web.UI.Page
{
    public string latitude, longitude;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["action"] == "map")
            {
                string pilgrim_id = Request.QueryString["id"];
                string select_location = "select lat ,long from data where id='" + pilgrim_id + "'";
                DataTable user_loc = Database.GetData(select_location);
                if (user_loc.Rows.Count > 0)
                {
                    txtlat.Text = Convert.ToString(user_loc.Rows[0]["lat"]);
                    txtlon.Text = Convert.ToString(user_loc.Rows[0]["long"]);
                }

            }
        }
    }
}