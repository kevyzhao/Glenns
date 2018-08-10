<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper bgded overlay" style="background-image:url('images/windmill.jpg');">
  <div id="pageintro" class="hoc clear"> 

    <article>
      <h2 class="heading">"We Sell the Best and Service the Rest"</h2>
        <asp:Label ID="Label1" runat="server">
         Serving Northern Utah and Southern Idaho's Water Needs for Over 50 years.
         We Specialize in all Water Well Needs: Agriculture, City Water, Industrial, Residential and Stock Water.
         We Service and Install: Line Shaft Turbine, Centrifugals, Submersibles, Windmills and Solar Pumps
         <br/><br/>
         Also Offering 24 Hour Emergency Service
         <br/><br/>
        </asp:Label>
         

      <footer>
          <%--NEED LINK--%>

          
          <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Our Products" OnClick="Button1_Click" />
      </footer>
    </article>
     
  </div>
</div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div class="wrapper row3">
  <main class="hoc container clear"> 

    <!-- main body -->

    <div class="center btmspace-50">
      <h2 class="heading">About Us</h2>
      <p>We are a local company who are dedicated to serving the Cache Valley area. With over 50 years of
          experience we have the knowlege, products, and skills to take care of any water need you may have. 
      </p>
    </div>
   
   
    <!-- / main body -->
    <div class="center btmspace-50">
      <h2 class="heading">Mission Statement</h2>
      <p>To supply our customers with expert knowlege and top of the line products. </p>
    </div>
  </main>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="WhiteBackground" Runat="Server"></asp:Content>





