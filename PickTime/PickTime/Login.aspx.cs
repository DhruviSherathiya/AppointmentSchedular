using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

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

        }
    }
}