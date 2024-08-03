using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HRAKH
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(@"Data Source=DESKTOP-LCLPMHJ;Initial Catalog=project_blossom;Integrated Security=True;");
        }

        protected void but_register_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cm = new SqlCommand("SELECT * FROM [dbo].[customers] WHERE customer_username='"+tex_name.Text+ "' and customer_password='" + tex_password.Text+"'", cn);
            SqlDataReader sdr = cm.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows == true)
            {
                Session["User"] = tex_name.Text;
                Response.Redirect("default.aspx");
            }
            else
            {
                Response.Write("<script> alert('Email or Password is wrong!') </script>");
            }
            cn.Close();
        }
    }
}