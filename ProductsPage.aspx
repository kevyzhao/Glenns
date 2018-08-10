<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ProductsPage.aspx.cs" Inherits="ProductsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductID, [ProductName], [ImagePath], [UnitPrice],p.CategoryID as CategoryID,c.categoryid as catid,categoryname 
FROM [Products] as p join categories as c on p.categoryid=c.categoryid
WHERE (p.CategoryID = @CategoryID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CategoryID" QueryStringField="catid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT p.categoryid AS catid, CategoryName 
FROM dbo.Products AS p JOIN dbo.Categories AS c ON p.CategoryID=c.CategoryID
where p.categoryid =@categoryid">
        <SelectParameters>
            <asp:QueryStringParameter Name="categoryid" QueryStringField="catid" />
        </SelectParameters>
    </asp:SqlDataSource>
                     <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <LayoutTemplate>
                <p id="itemPlaceholder" runat="server">
                    </p>
                
            </LayoutTemplate>
            <ItemTemplate>
                
                    
       
                                <a href="CategoriesPage.aspx">Products</a> >>

                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Catid", "~/ProductsPage.aspx?catid={0}") %>'>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("categoryname") %>'></asp:Label>
                                </asp:HyperLink> 
            </ItemTemplate>
        
        </asp:ListView>



    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CategoryID">
        <LayoutTemplate>
    <div class="wrapper row3">
        <main class="hoc container clear"> 
             <div class="content">
                 
                 <div id="gallery">
                     <figure>
                         <h1 style="font-size: 36px; text-align: center; font-weight: bold;">Products</h1>
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
           
          <li class="one_quarter"><a href='ProductDetails.aspx?prodid=<%# Eval("ProductID") %>'><img height="200" width="200" src='images/<%# Eval("ImagePath") %>' alt=""><br /><br /><h2 style="text-align: center"><%# Eval("ProductName") %></h2><h3 style="text-align: center"><%# Eval("UnitPrice","{0:c}") %></h3></a></li>
          
          
            
         </ItemTemplate>

    </asp:ListView>

</asp:Content>



