<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HRAKH._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="BLossom is an e-commerce site that sells perfums, flowers, lesather goods, watches, glasses, and accessories. We also have the quality that you want with perfect price."/>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="keywords" content="Blossom, Perfums, Flowers, Accessories, Leather goods, Leather, Watches, Glasses"/>
    <meta name="author" content="Hady Jmal Omer, Karas Medhat, Hagar Ghazal, Rana EL-Sherbieny"/>
    <title>𝓑𝓵𝓸𝓼𝓼𝓸𝓶</title>
    <link href="css/Home.css" rel="stylesheet" />
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
      <main>
        <header>
          <nav class="navigation" id="W">
            <div class="logo"> <img src="images/logo.jpeg" alt="blossom logo" class="logoo"/>
              <!-- <span>𝓦𝓱𝓮𝓻𝓮 𝓑𝓵𝓸𝓸𝓶𝓼 𝓜𝓮𝓮𝓽 𝓔𝓵𝓮𝓰𝓪𝓷𝓬𝓮</span> -->
              <div class="Tittle">       
              </div>
          </div>
          <div class="category">
            <a href="#new-section" class="cati">Accessoris</a>
            <a href="#section3" class="cati">Flowers & Gifts</a>
            <a href="#section4"class="cati">Contact</a>
            <div runat="server" id="loginto" class="loginto">
                <a href="login.aspx"class="cati">sign in</a>
                <a href="register.aspx"class="cati">sign up</a>
            </div>
            <div id="lstwelcome" class="logout" runat="server">
                  Welcome, <asp:LinkButton ID="btnuser" runat="server" href="account.aspx"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></asp:LinkButton>
                <asp:LinkButton ID="btnlogout" runat="server"  OnClick="btnlogout_Click">Sign Out</asp:LinkButton>
            </div>
            <div class="dropdown">
              <asp:LinkButton ID="LinkButton1" runat="server" CssClass="dropbtn">Categories</asp:LinkButton>
              <div class="dropdown-content" runat="server" id="catbutdown">
                <a href="perfumes.aspx">Perfumes </a>
                <a href="glasses.aspx">glasses </a>
                <a href="accessories.aspx"> Jewelry </a>
                <a href="watches.aspx">Watches </a>
                <a href="leather.aspx">Leathers</a>
                <a href="flowers.aspx"> Flowers </a>
              </div>
            </div>
          </div>
          </nav>
        </header>
        <section class="main" id="T">
          <div>
            <h2>We are gift store<br/><span>𝓦𝓱𝓮𝓻𝓮 𝓑𝓵𝓸𝓸𝓶𝓼 𝓜𝓮𝓮𝓽 𝓔𝓵𝓮𝓰𝓪𝓷𝓬𝓮</span></h2>
            <h2>We aim to create a store that provides all your needs at reasonable prices and the highest quality. You'll find gifts for every occasion, tailored to suit you.</h2>
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="#new-section" CssClass="button">Browsing</asp:LinkButton>
            <div class="social_icons">
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-youtube"></i></a>
            </div>
          </div>
        </section>
      </main>
      <section id="new-section" class="Accessoris">
        <h1 class="title">Accessoris</h1>
        <div class="content">
          <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
              <div class="cards">
                  <div class="card_trn">
                    <h2>Leather goods</h2>
                    <img class="img_style" src="images/black wallet 2.jpg" alt="dcdfefef" width="200" height="200"/>
                  </div>
                  <div class="info">
                    <p> We offer a wide range of wallets with various styles, ranging from classic to contemporary models.</p>
                  </div>
                </div>
          </asp:LinkButton>
          <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" >
              <div class="cards" id="jewelry">
                <div class="card_trn2">
                  <h2>Jewelry</h2>
                  <img  class="img_style" src="images/25.jpg"  width="200" height="200"/>
                </div>
                <div class="info">
                  <p>
                    Elevate your beauty with a touch of luxury – shine bright with our exquisite collection of jewelry, featuring chains, rings, and more.
                  </p>
                </div>
              </div>
          </asp:LinkButton>
            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">
                <div class="cards" id="sunglasses">
                  <div class="card_trn3">
                    <h2>Glasses</h2>
                        <div class="card_trn3">
                          <h2>Glasses</h2>
                          <img class="img_style" src="images/sunglasse.jpg" alt="dcdfefef" width="200" height="200"/>
                        </div>
                        <div class="info">
                          <p>Enjoy our distinctive collection of sunglasses, where modern and classic designs meet. Choose the perfect pair with elegance.</p>
                        </div>
                      </div>
            </asp:LinkButton>
        </div>
      </section>
      <section id="section3" class="Flowers">
        <h1 class="title">Flowers & Gifts</h1>
        <div class="content">
            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">
                <div class="cards" id="watches">
                  <div class="card_trn">
                    <h2>Watches</h2>
                    <img class="img_style" src="images/trind.jpg"   width="200" height="200"/>
                  </div>
                  <div class="info">
                    <p> "Browse our best products.<br/> We strive to help you find the right place. <br/>it is the most requested items."</p>
                  </div>
                </div>
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">
                <div class="cards" id="flowers">
                  <div class="card_trn2">
                    <h2>Flowers</h2>
                    <img class="img_style" src="images/SaySorry.jfif"  width="200" height="200"/>
                  </div>
                  <div class="info">
                    <p>
                    We have collection of Flowers <br/> you will need it in all occasions like widding and valentine 
                    </p>
                  </div>
                </div>
            </asp:LinkButton>
            <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">
                <div class="cards" id="perfumes">
                  <div class="card_trn3">
                    <h2>Perfumes</h2>
                    <img class="img_style" src="images/pm20.jpg"  width="200" height="200"/>
                  </div>
                  <div class="info">
                    <p>
                      "Explore a world of unique perfumes, where every sent tells a story and moments becomes a cherished memory!"
                  </p>
                  </div>
                </div>
            </asp:LinkButton>
        </div>
      </section>
      <section id="section4" class="Contact">
        <h1 class="title">Contact</h1>
        <div class="content">
            <div class="cards">
            <div class="card_trn1">
                <div class="info-box">
                <a class="clock" href="#"><i class="fa fa-clock"></i></a>
                <h3>Open Hours</h3>
                <p>Sunday - Thursday<br/>12:00AM - 08:00PM</p>
                </div>
            </div>
            <div class="info"></div>
            </div>
            <div class="cards">
            <div class="card_trn2"> 
                <div class="info-box">
                <a class="map" href="#"><i class="fa-solid fa-shop"></i></a>
                <h4>Location</h4>
                <p>
                El-Nabawy El-Mohandes<br/>
                Kafr El-Sheikh<br/>
                Egypt<br/><br/>
                <strong>Phone:</strong> +20 105 099 0193<br/>
                <strong>Email:</strong> Blossom@gmail.com<br/>
                </p>

            </div>

            </div>
        </div>
        </div>
      </section>
      <footer>
            <div class="containar text-center">
                <div class="row">
                    <div class="col-sm-3">
                        <img src="images/blossom-logo-1.jpg" alt="blossom logo" class="logo">
                        <div class="dis">
                            Blossom is an e-commerce store to sell poquies, watches, accessories, glasses, leather goods, and perfumes
                        </div>
                        <div class="disteam">
                            We hope you find this site well. <br/>
                            Our pleasure, <br/>
                            Blossom Team
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-8 col-sm-6">
                                <h3>
                                    <b>
                                        Links
                                    </b>
                                </h3>
                                <div class="pages">
                                    <div class="pages">
                                        <asp:LinkButton ID="homefoot" runat="server" CssClass="linkpage">Home</asp:LinkButton>
                                        <asp:LinkButton ID="accountfoot" runat="server" CssClass="linkpage" OnClick="accountfoot_Click">Account</asp:LinkButton>
                                        <asp:LinkButton ID="accesoriesfoot" runat="server" CssClass="linkpage" OnClick="accesoriesfoot_Click">Accessories</asp:LinkButton>
                                        <asp:LinkButton ID="glassesfoot" runat="server" CssClass="linkpage" OnClick="glassesfoot_Click">Glasses</asp:LinkButton>
                                        <asp:LinkButton ID="leatherfoot" runat="server" CssClass="linkpage" OnClick="leatherfoot_Click">Lesther goods</asp:LinkButton>
                                        <asp:LinkButton ID="oerfumfoot" runat="server" CssClass="linkpage" OnClick="oerfumfoot_Click">Perfumes</asp:LinkButton>
                                        <asp:LinkButton ID="Poquiefoot" runat="server" CssClass="linkpage" OnClick="Poquiefoot_Click">Poquies</asp:LinkButton>
                                        <asp:LinkButton ID="watchfoot" runat="server" CssClass="linkpage" OnClick="watchfoot_Click">Watches</asp:LinkButton>
                                        <asp:LinkButton ID="cartfoot" runat="server" CssClass="linkpage" OnClick="cartfoot_Click">Cart</asp:LinkButton>
                                        <asp:LinkButton ID="payfoot" runat="server" CssClass="linkpage" OnClick="payfoot_Click">Payment</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4 col-sm-6">
                                <h3>
                                    <b>
                                        Team members
                                    </b>
                                </h3>
                                <ul>
                                    <li>HADY JMAL OMER</li>
                                    <div class="social">
                                        <i class="fa fa-facebook"></i>
                                        <i class="fa fa-instagram"></i>
                                        <i class="fa fa-telegram"></i>
                                        <i class="fa fa-github"></i>
                                    </div>
                                    <li>AHMED ABD-ELAZIZ ABO ELELA</li>
                                    <div class="social">
                                        <i class="fa fa-facebook"></i>
                                        <i class="fa fa-instagram"></i>
                                        <i class="fa fa-telegram"></i>
                                        <i class="fa fa-github"></i>
                                    </div>
                                    <li>KARAS MEDHAT</li>
                                    <div class="social">
                                        <i class="fa fa-facebook"></i>
                                        <i class="fa fa-instagram"></i>
                                        <i class="fa fa-telegram"></i>
                                        <i class="fa fa-github"></i>
                                    </div>
                                    <li>HAGAR RAMADAN</li>
                                    <div class="social">
                                        <i class="fa fa-facebook"></i>
                                        <i class="fa fa-instagram"></i>
                                        <i class="fa fa-telegram"></i>
                                        <i class="fa fa-github"></i>
                                    </div>
                                    <li>RANA ELSHERBIENY</li>
                                    <div class="social">
                                        <i class="fa fa-facebook"></i>
                                        <i class="fa fa-instagram"></i>
                                        <i class="fa fa-telegram"></i>
                                        <i class="fa fa-github"></i>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
      <div class="backup" id="bup">
        <a href ="#T" class="F">
          <i class="fa fa-arrow-up"></i>
        </a>
      </div>
      <script src="js/backup.js"></script>
    </form>
</body>
</html>
