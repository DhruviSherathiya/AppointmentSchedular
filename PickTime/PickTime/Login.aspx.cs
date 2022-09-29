using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Drawing.Printing;

namespace PickTime
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    Response.Write("Database connected");
                }
            }
            catch(Exception ex)
            {
                Response.Write("Errors: " + ex);
            }
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
                con.Open();
                string cmdst = "select Username from User where Username='" + txt_Username.Text.Trim() + "'";
                // trim removes whitespaces  
                SqlCommand cmd = new SqlCommand(cmdst, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Session["Response"] = txt_Username.Text;
                    Response.Redirect("Home.aspx");
                    // user login  
                }
                else
                {
                    lblMessage.Text = "Invalid Login!";
                    // label  
                    lblMessage.Visible = true;
                    // label  
                }
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
           
        }
    }
}