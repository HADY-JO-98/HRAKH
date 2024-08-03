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
    public partial class signning : System.Web.UI.UserControl
    {
        SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(@"Data Source=DESKTOP-LCLPMHJ;Initial Catalog=project_blossom;Integrated Security=True;");
        }
        protected void but_register_Click(object sender, EventArgs e)
        {
            cn.Open();

            SqlCommand cm = new SqlCommand("INSERT INTO customers (customer_name,customer_username,customer_email,customer_password) VALUES ('" + textfull.Text + "','"+ textuser.Text + "','"+ textmail.Text + "','"+ textpass.Text+"')", cn);
            cm.ExecuteNonQuery();
            Session["Usern"] = textuser.Text;
            Response.Redirect("default.aspx");

            cn.Close();
        }
    }
}