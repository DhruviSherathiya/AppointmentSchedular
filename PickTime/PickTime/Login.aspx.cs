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
using System.Data.OleDb;

namespace PickTime
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection();
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
            }*/
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    string query = "SELECT Username,Password FROM [User] WHERE Username='" + TextBoxUsername.Text + "'and Password='" + TextBoxPassword.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    
                    using (cmd)
                    {
                       
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            
                            if (reader.Read())
                            {
                                Session["Username"] = TextBoxUsername.Text;
                                Response.Write("Login Successfully.");
                                Response.Redirect("~/AddAppointment.aspx");
                            }
                            else
                            {
                                Response.Write("Invalid Username or Password.");
                            }
                            reader.Close();
                        }
                        
                    }

                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.Visible = true;
            }
        }
    }
}