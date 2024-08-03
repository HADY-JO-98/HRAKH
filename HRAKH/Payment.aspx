<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="HRAKH.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="BLossom is an e-commerce site that sells perfums, flowers, lesather goods, watches, glasses, and accessories. We also have the quality that you want with perfect price."/>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="keywords" content="Blossom, Perfums, Flowers, Accessories, Leather goods, Leather, Watches, Glasses"/>
    <meta name="author" content="Hady Jmal Omer, Karas Medhat, Hagar Ghazal, Rana EL-Sherbieny"/>
    <title>𝓑𝓵𝓸𝓼𝓼𝓸𝓶</title>
    <link href="css/Payment.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="flowers/flowers.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/all.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server" class="container">
            <div class="formact">
                <div class="row">
                    <div class="col">
                        <h3 class="title">billing address</h3>
                        <div class="inputBox">
                            <span>full name :</span>
                            <asp:TextBox ID="TextBox9" runat="server" placeholder="User Name" class="data"></asp:TextBox>
                        </div>
                        <div class="inputBox">
                            <span>email :</span>
                            <asp:TextBox ID="TextBox8" runat="server" placeholder="example@example.com" TextMode="Email" class="data"></asp:TextBox>
                        </div>
                        <div class="inputBox">
                            <span>address :</span>
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Floor - Street - Locality" class="data"></asp:TextBox>
                        </div>
                        <div class="inputBox">
                            <span>city :</span>
                            <asp:TextBox ID="TextBox6" runat="server" placeholder="Cairo" class="data"></asp:TextBox>
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>exp year :</span>
                                <asp:TextBox ID="TextBox5" runat="server" placeholder="2025" class="data"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <h3 class="title">payment</h3>
                        <div class="inputBox">
                            <span>cards accepted :</span>
                            <img src="images/mastercard.png" alt=""/>
                            <img src="images/visa.png" alt=""/>
                        </div>
                        <div class="inputBox">
                            <span>name on card :</span>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Full Name" class="data"></asp:TextBox>
                        </div>
                        <div class="inputBox">
                            <span>credit card number :</span>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="**** **** **** ****" TextMode="Password" class="data"></asp:TextBox>
                        </div>
                        <div class="inputBox">
                            <span>exp month :</span>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="June" class="data"></asp:TextBox>
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>CVV :</span>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="123" class="data"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
             <asp:Button ID="Button1" runat="server" Text="proceed to checkout" class="submit-btn" OnClick="Button1_Click"/>
           </div>
    </form>
</body>
</html>
