using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PickTime
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    con.Open();
                    string sql = "insert into [User] (Username, Email, Password) values ('" + TbName.Text + "' , '" + TbEmail.Text + "' , '" + TbPassword.Text + "')";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblMessage.Visible = true;
                    lblMessage.Text = "You are successfully registerd.";
                    TbName.Text = "";
                    TbEmail.Text = "";
                    TbPassword.Text = "";
                    TbConfirmPass.Text = "";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}