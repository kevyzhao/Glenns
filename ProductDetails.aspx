<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductID ,[ProductName], p.Description, [ImagePath], [UnitPrice],categoryname,c.categoryID as cat
FROM Products as p join Categories as c on p.categoryid = c.categoryid
WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="prodid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <%--Navigations back to products or categories page--%>

        <asp:ListView ID="breadcrumb" runat="server" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
                <div runat="server" id="ItemPlaceHolder">
                    
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div>
                    <p>

                                <a href="CategoriesPage.aspx">Products</a> >>

                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("cat", "~/ProductsPage.aspx?catid={0}") %>'>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("categoryname") %>'></asp:Label>
                                </asp:HyperLink> 
                                >>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("ProductID", "~/ProductDetails.aspx?prodid={0}") %>' >
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Productname") %>'></asp:Label>
                                </asp:HyperLink>
                                   


                        </P>
                </div>
            </ItemTemplate>
        
        
        </asp:ListView>
       
    
    
    <h1 style="font-size: 36px; text-align: center; font-weight: bold;">Product Details</h1>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" ForeColor="Black" OnItemCommand="FormView1_ItemCommand">
            <ItemTemplate>
                <div class="one_half">
                
                    <asp:HiddenField ID="hiddenimgurl" Value='<%# Eval("ImagePath") %>' runat="server" />
                    <asp:HiddenField ID="hiddenprice" Value='<%# Eval("UnitPrice") %>' runat="server" />


                    <asp:Label ID="productnamelbl" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="False" Font-Underline="False" Font-Size="XX-Large"></asp:Label>
                    <br />
                    <br />
                    <asp:Image ID="img" Height="400" Width="400" runat="server" ImageUrl='<%# Eval("ImagePath","images/{0}") %>' />
                </div>
                <div style="text-align: left">
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Price:   " Font-Underline="False" Font-Size="Large"></asp:Label>               
                    &nbsp
                    <asp:Label ID="pricelbl" runat="server" Text='<%# Eval("UnitPrice","{0:c}") %>' Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Quantity:" Font-Size="Large"></asp:Label>
                    <br />
                    <asp:TextBox ID="quanitytxt" runat="server" Width="35" Text="1" Font-Size="Large"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Add To Cart" Font-Size="Larger"  />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Description:" Font-Size="Large"></asp:Label>
                    <br />
                    <asp:Label ID="descriptionlbl" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    <br />
                    <asp:Label ID="productidlbl" Visible="false" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>

                </div>
            
            </ItemTemplate>


        </asp:FormView>
    
</asp:Content>

