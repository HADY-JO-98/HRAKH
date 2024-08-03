using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace HRAKH
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null) {
                if (Session["Usern"] == null)
                {
                    lstwelcome.Visible = false;
                    loginto.Visible = true;
                    catbutdown.Visible = false;
                }
                else
                {
                    lstwelcome.Visible = true;
                    loginto.Visible = false;
                    catbutdown.Visible = true;
                    Label1.Text = Session["Usern"].ToString();
                }
            }
            else
            {
                lstwelcome.Visible = true;
                loginto.Visible = false;
                catbutdown.Visible = true;
                Label1.Text = Session["User"].ToString();
            }
            if (Session["User"] == null && Session["Usern"] != null)
            {
                Session["User"] = Session["Usern"];
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("default.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("leather.aspx");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("accessories.aspx");
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("glasses.aspx");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("watches.aspx");
            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("flowers.aspx");
            }
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("perfumes.aspx");
            }
        }

        protected void accountfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("account.aspx");
            }
        }

        protected void accesoriesfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("accessories.aspx");
            }
        }

        protected void glassesfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("galsses.aspx");
            }
        }

        protected void leatherfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("leather.aspx");
            }
        }

        protected void oerfumfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("perfumes.aspx");
            }
        }

        protected void Poquiefoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("flowers.aspx");
            }
        }

        protected void watchfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("watches.aspx");
            }
        }

        protected void cartfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("cart.aspx");
            }
        }

        protected void payfoot_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Response.Redirect("Payment.aspx");
            }
        }
    }
}