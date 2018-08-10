<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CategoriesPage.aspx.cs" Inherits="ShopPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName], [Image], [Description] FROM [Categories]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CategoryID">
        <LayoutTemplate>
    <div class="wrapper row3">
        <main class="hoc container clear"> 
             <div class="content">

                 


                 <div id="gallery">
                     <figure>
                         <h1 style="font-size: 36px; text-align: center; font-weight: bold;">Categories</h1>
                            <br />
                            <br />
                            <ul id="itemPlaceHolder" runat="server" class="nospace clear">

                            </ul>
                         </figure>
                     </div>
                 </div>
            </main>
        </div>

        </LayoutTemplate>

        <ItemTemplate>
           
          <li class="one_quarter"><a href='ProductsPage.aspx?catid=<%# Eval("CategoryID") %>'><img height="200" width="200" src='<%# Eval("Image") %>' alt=""><br /><br /><h2 style="text-align: center"><%# Eval("CategoryName") %></h2></a></li>
          
          
            
         </ItemTemplate>

    </asp:ListView>

</asp:Content>

<%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>'/>--%>

