using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRAKH
{
    public partial class accessories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Button btnAddToCart = (Button)sender;
            ListViewItem item = (ListViewItem)btnAddToCart.NamingContainer;
            string productId = ListView1.DataKeys[item.DataItemIndex]["id_product"].ToString();
            string productPrice = ListView1.DataKeys[item.DataItemIndex]["product_price"].ToString();
            List<string> cartItems = Session["CartItems"] as List<string>;
            List<string> cartPrices = Session["CartPrices"] as List<string>;
            if (cartItems == null)
            {
                cartItems = new List<string>();
                cartPrices = new List<string>();
            }
            cartItems.Add(productId);
            cartPrices.Add(productPrice);
            Session["CartItems"] = cartItems;
            Session["CartPrices"] = cartPrices;
        }
    }
}