<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="HRAKH.register" %>--%>

<%@ Register Src="~/signning.ascx" TagPrefix="uc1" TagName="signning" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="BLossom is an e-commerce site that sells perfums, flowers, lesather goods, watches, glasses, and accessories. We also have the quality that you want with perfect price."/>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="keywords" content="Blossom, Perfums, Flowers, Accessories, Leather goods, Leather, Watches, Glasses"/>
    <meta name="author" content="Hady Jmal Omer, Karas Medhat, Hagar Ghazal, Rana EL-Sherbieny"/>
    <title>𝓑𝓵𝓸𝓼𝓼𝓸𝓶</title>
    <link href="css/rigester.css" rel="stylesheet" />
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
            <uc1:signning runat="server" ID="signning" />
        </div>
    </form>
</body>
</html>