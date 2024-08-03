<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HRAKH.login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="BLossom is an e-commerce site that sells perfums, flowers, lesather goods, watches, glasses, and accessories. We also have the quality that you want with perfect price."/>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="keywords" content="Blossom, Perfums, Flowers, Accessories, Leather goods, Leather, Watches, Glasses"/>
    <meta name="author" content="Hady Jmal Omer, Karas Medhat, Hagar Ghazal, Rana EL-Sherbieny"/>
    <title>𝓑𝓵𝓸𝓼𝓼𝓸𝓶</title>
    <link href="css/login.css" rel="stylesheet" />
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
        <div>
            <div class="validateerror">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" />
            </div>
            <div class="wrapper">
                <h1>Login</h1>
                <div class="input_pox">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="tex_name">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="tex_name" runat="server" placeholder="UserName" name="username"></asp:TextBox>
                </div>
                <div class="input_pox">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="tex_password">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="tex_password" runat="server" placeholder="Password" name="password" TextMode="Password"></asp:TextBox>
                </div>
                <div class="remember-forgot">
                    <label><input id="checkstay" type="checkbox" runat="server" />Remember Me </label>
                    <label><input id="checkemp" type="checkbox" runat="server" />Employee </label>
                </div>
                <asp:Button ID="Butlogin" runat="server" Text="Login" class="button" OnClick="but_register_Click" ValidationGroup="ok" />
                <div class="regester-link">
                    <p>Dont have an account?<a href="register.aspx" class="signup-link">Sign in</a></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
