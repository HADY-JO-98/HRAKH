<%@ Page Title="" Language="C#" MasterPageFile="~/category.Master" AutoEventWireup="true" CodeBehind="accessories.aspx.cs" Inherits="HRAKH.accessories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitlenav" runat="server">
    <div class="title">𝓐𝓬𝓬𝓮𝓼𝓼𝓸𝓻𝓲𝓮𝓼</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="all">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id_product">
            <ItemTemplate>
                <div class="item">
                    <img src='<%# Eval("product_img") %>' alt="Product Image" class="pic"/>
                    <p> <%# Eval("product_price") %> </p>
                    <asp:Button ID="btnAddToCart" runat="server" CssClass="cart" Text="Add to Cart" OnClick="btnAddToCart_Click" />
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project_blossomConnectionString %>" ProviderName="<%$ ConnectionStrings:project_blossomConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [products] WHERE ([id_category] = @id_category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="id_category" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>