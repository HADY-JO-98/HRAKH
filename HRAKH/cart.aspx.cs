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
    public partial class cart : System.Web.UI.Page
    {
        private const decimal TaxRate = 0.14m;
        private const decimal DeliveryCharge = 50m;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
            }
        }
        private void LoadCartItems()
        {
            List<string> cartItems = Session["CartItems"] as List<string>;
            List<string> cartPrices = Session["CartPrices"] as List<string>;

            if (cartItems != null && cartItems.Count > 0 && cartPrices != null && cartPrices.Count > 0)
            {
                var cartData = new List<dynamic>();
                for (int i = 0; i < cartItems.Count; i++)
                {
                    cartData.Add(new { product_id = cartItems[i], product_price = cartPrices[i] });
                }

                CartListView.DataSource = cartData;
                CartListView.DataBind();
                CalculateTotal(cartPrices);
            }
            else
            {
                CartListView.DataSource = null;
                CartListView.DataBind();
                LiteralPrice.Text = "0.00";
                LiteralTotal.Text = "0.00";
            }
        }

        private void CalculateTotal(List<string> cartPrices)
        {
            decimal totalPrice = 0m;

            foreach (var price in cartPrices)
            {
                totalPrice += Convert.ToDecimal(price);
            }

            decimal taxes = totalPrice * TaxRate;
            decimal finalTotal = totalPrice + taxes + DeliveryCharge;

            LiteralPrice.Text = totalPrice.ToString("0.00");
            LiteralTotal.Text = finalTotal.ToString("0.00");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}