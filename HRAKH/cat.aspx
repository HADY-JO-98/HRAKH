<%@ Page Title="" Language="C#" MasterPageFile="~/category.Master" AutoEventWireup="true" CodeBehind="cat.aspx.cs" Inherits="HRAKH.cat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitlenav" runat="server">
    Cat
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="item">
                <img src='<%# Eval("product_img") %>' alt="Product Image" class="pic"/>
                <p> <%# Eval("product_price") %> </p>
                <input type="button" value="Add To Cart" class="cart">
            </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:project_blossomConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:project_blossomConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [products] WHERE ([id_category] = @id_category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="id_category" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
