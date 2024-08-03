<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="HRAKH.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="BLossom is an e-commerce site that sells perfums, flowers, lesather goods, watches, glasses, and accessories. We also have the quality that you want with perfect price."/>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="keywords" content="Blossom, Perfums, Flowers, Accessories, Leather goods, Leather, Watches, Glasses"/>
    <meta name="author" content="Hady Jmal Omer, Karas Medhat, Hagar Ghazal, Rana EL-Sherbieny"/>
    <title>𝓑𝓵𝓸𝓼𝓼𝓸𝓶</title>
    <link href="css/category.css" rel="stylesheet" />
    <link href="css/Cart.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="flowers/flowers.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navigator">
            <div class="logoo"> <img src="images/logo.jpeg" alt="blossom logo" class="logo"/>
                <div class="Tittle">
                    
                </div>
            </div>
            <div class="icons"> 
                <a href="default.aspx"> <i class="fa fa-home"></i></a>
                <a href="account.aspx"> <i class="fa fa-user"></i></a>
                <!-- <a><i class="fa fa-shopping-cart"></i></a> -->
            </div>
        </nav>
        <a href ="#W">
            <div class="backup">
            <i class="fa fa-arrow-up"></i>
          </div>
        </a>
        <div class="all">
            <asp:ListView ID="CartListView" runat="server">
                <EmptyDataTemplate>
                    <div class="empty-cart">Your cart is empty.</div>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <div class="item">
                        <img src='<%# Eval("product_img") %>' alt="Product Image" class="pic"/>
                        <p> <%# Eval("product_name") %> </p>
                        <p> <%# Eval("product_price") %> </p>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div class="purchase">
            <a href="Payment.aspx" class="pay">
                <asp:Button ID="Button1" runat="server" Text="Purchase" class="PRC" OnClick="Button1_Click"/>
            </a>
        </div>
        <div class="total">
            <p>price****************************** <asp:Literal ID="LiteralPrice" runat="server"></asp:Literal> EGP</p>
            <p class="tprice">taxes****************************** 14%</p>
            <p class="tprice">delivery*************************** 50 EGP</p>
            <p class="tprice">total******************************* <asp:Literal ID="LiteralTotal" runat="server"></asp:Literal> EGP</p>
        </div>
        <script src="js/backup.js"></script>
        <script src="js/dropdown.js"></script>
    </form>
</body>
</html>
