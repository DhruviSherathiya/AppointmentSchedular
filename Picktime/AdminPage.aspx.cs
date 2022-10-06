using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PickTime
{
    public partial class AdminPage : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "SELECT * FROM Schedules;";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();

            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "MySchedule");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            GridViewScheduleAdmin.DataSource = ds.Tables["MySchedule"];
            GridViewScheduleAdmin.DataBind();
        }

        protected void GridViewScheduleAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}