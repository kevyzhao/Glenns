<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="WhiteBackground" Runat="Server">

    <h1>
        Thank You! <br>
        Your Order has been confirmed. 
    </h1>
    <p>Below is is your receipt.Please feel free to print this page your record or check in your order history</p>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT OD.orderid,OD.quantity,OD.unitprice,total,ordernotes,subtotal,imagepath,productname,OD.productid as prodid
FROM [OrderDetails] as OD join Orders as O on OD.orderid=O.orderid join Products as P on OD.productid =P.productid
WHERE OD.OrderId = @OrderId">
        <SelectParameters>
            <asp:QueryStringParameter Name="OrderId" QueryStringField="orderid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="858px">
        <Columns>
            <asp:TemplateField HeaderText="Product Name" SortExpression="productname">

                <ItemTemplate>                     
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("prodid", "~/ProductDetails.aspx?prodid={0}") %>' >
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("productname") %>'></asp:Label></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="quantity" />
            <asp:BoundField DataField="unitprice" HeaderText="Unit Price" ReadOnly="True" SortExpression="unitprice" DataFormatString="{0:c}" />
            <asp:TemplateField>

                <ItemTemplate>
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("prodid", "~/ProductDetails.aspx?prodid={0}") %>' >
                                                    <asp:Image ID="Image1" Width="40px" runat="server" ImageUrl='<%# Eval("Imagepath", "images/{0}") %>' /></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="859px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="orderid" HeaderText="Order ID" SortExpression="orderid" ReadOnly="True" />
            <asp:BoundField DataField="subtotal" HeaderText="Subtotal" SortExpression="subtotal" DataFormatString="{0:c}" ReadOnly="True" />
            <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" DataFormatString="{0:c}" ReadOnly="True" />
            <asp:BoundField DataField="ordernotes" HeaderText="Order Notes" SortExpression="ordernotes" ReadOnly="True" />
        </Fields>
    </asp:DetailsView>
    
    

</asp:Content>

