<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="WhiteBackground" Runat="Server">

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" OnItemDeleting="ListView1_ItemDeleting">
                                <LayoutTemplate>
                                    <table>
                                    <thead>
                                        <tr>
                                            <th >&nbsp;</th>
                                            <th >&nbsp;</th>
                                            <th >Product</th>
                                            <th >Price</th>
                                            <th >Quantity</th>
                                            <th >Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr runat="server" id="itemPlaceHolder" />
                                        
                                        <tr>
                                            <td colspan="6">
                                                
                                                <asp:LoginView ID="LoginView1" runat="server">
                                                    <AnonymousTemplate>
                                                        <a href="Account/Login.aspx">Login to place your order.</a>
                                                    </AnonymousTemplate>
                                                    <LoggedInTemplate>
                                                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="Checkout_Click" CssClass="checkout-button button alt wc-forward" />
                                                    </LoggedInTemplate>
                                                </asp:LoginView>
                                                
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                </LayoutTemplate>
                                <ItemTemplate>
                                    <tr>
                                            <td>
                                                <asp:LinkButton ID="btnDelete" title="Remove this item" CommandName="Delete" runat="server">×</asp:LinkButton>

                                            </td>

                                            <td >
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ID", "~/ProductDetails.aspx?prodid={0}") %>' >
                                                    <asp:Image ID="Image1" Width="40px" runat="server" ImageUrl='<%# Eval("Imageurl", "images/{0}") %>' />


                                               </asp:HyperLink>
                                            </td>

                                            <td>
                                                <asp:HyperLink ID="lnkName" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='<%# Eval("ID", "~/ProductDetails.aspx?prodid={0}") %>' ></asp:HyperLink>
                                                
                                            </td>

                                            <td>
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price", "{0:c}") %>'></asp:Label>
                                            </td>

                                            <td>
                                                <div >
                                                    <asp:TextBox ID="txtQty" OnTextChanged="txtQty_TextChanged" AutoPostBack="true" Text='<%# Bind("Quantity") %>' runat="server" type="number" size="4" class="input-text qty text" title="Qty" value="1" min="0" step="1"></asp:TextBox>
                                                 
                                                </div>
                                            </td>

                                            <td >
                                                <asp:Label ID="lblExtended" runat="server" Text='<%# Eval("ExtendedPrice", "{0:c}") %>'></asp:Label>
                                            </td>
                                        </tr>
                                </ItemTemplate>

                            </asp:ListView>

                

                            <div>
                                <h2>Cart Totals</h2>

                                <table cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <th>Cart Subtotal</th>
                                            <td>
                                                <asp:Label ID="lblSubtotal" runat="server"></asp:Label>
                                             
                                        </tr>

                                        

                                        <tr>
                                            <th>Order Total</th>
                                            <td><strong> <asp:Label ID="lblTotal" runat="server"></asp:Label></strong> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>



                          

                
               

</asp:Content>

