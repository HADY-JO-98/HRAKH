<%@ Page Title="" Language="C#" MasterPageFile="~/category.Master" AutoEventWireup="true" CodeBehind="leather.aspx.cs" Inherits="HRAKH.leather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pagetitlenav" runat="server">
    <div class="Tittle">𝓛𝓮𝓪𝓽𝓱𝓮𝓻</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="all">
        
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="item">
                    <img src='<%# Eval("product_img") %>' alt="Product Image" class="pic"/>
                    <p> <%# Eval("product_price") %> </p>
                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" />
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project_blossomConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([id_category] = @id_category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="id_category" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </div>
</asp:Content>
