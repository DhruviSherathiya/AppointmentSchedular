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
                    string checkDate = "select count(*) from [Schedules] where Date = '" + TextBoxDate.Text + "' ";
                    string checkStartTime = "select count(*) from [Schedules] where Start_Time = '" + TextBoxStartTime.Text + "' ";

                    SqlCommand com1 = new SqlCommand(checkDate, con);
                    int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());

                    SqlCommand com2 = new SqlCommand(checkStartTime, con);
                    int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());

                    // check if date or start time exist in database
                    if(temp1 == 0 || temp2 == 0)
                    {
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
                    else
                    {
                        Response.Write("Selected slot is not available");
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}