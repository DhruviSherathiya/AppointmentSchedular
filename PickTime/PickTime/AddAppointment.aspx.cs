using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PickTime
{
    public partial class AddAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Create_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    string usrname = Session["User"].ToString();
                    Console.WriteLine(usrname);
                    con.Open();
                    string sql = "insert into [Schedules] (Subject,Start_time, End_time, User_name, Date) values ('" + TextBoxSubject.Text + "' , '" + TextBoxStartTime.Text + "' , '" + TextBoxEndTime.Text + "' , '" + usrname + "' , '" + TextBoxDate.Text + "')";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBoxSubject.Text = "";
                    TextBoxDate.Text = "";
                    TextBoxEndTime.Text = "";
                    TextBoxStartTime.Text = "";
                    Response.Write("Schedule added");
                    Response.Redirect("Home.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}