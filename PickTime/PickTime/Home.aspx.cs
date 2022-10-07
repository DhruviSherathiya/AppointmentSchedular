using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;
using System.Threading;

namespace PickTime
{
    public partial class Home : System.Web.UI.Page
    {
        DataSet ds;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             *  < 0 − If date1 is earlier than date2
             *  0 − If date1 is the same as date2
             *  > 0 − If date1 is later than date2
             *  int res = DateTime.Compare(d1, d2);
             */

            
            string conStr = WebConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            string usrname = Session["User"].ToString();
            Console.WriteLine(usrname);

            cmd.CommandText = "SELECT Subject,Date,Start_time,End_time FROM Schedules where User_name='" + usrname + "';";
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
            GridViewSchedule.DataSource = ds.Tables["MySchedule"];
            GridViewSchedule.DataBind();
        }

        protected void GridViewSchedule_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        /*protected void Button_Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }*/
    }
}