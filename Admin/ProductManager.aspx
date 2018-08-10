<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="ProductManager.aspx.cs" Inherits="InventoryPage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">

    <h1 style="font-size: 36px; text-align: center; font-weight: bold;">Product Manager</h1>
    <br />
    <br />

    <div class="one_quarter first">
        <div class="sdb_holder">
        <h6>Category Filter</h6>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" OnPreRender="DropDownList1_PreRender" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
        </div>
    </div>
     
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [Description], [ImagePath], [UnitPrice], [CategoryID] FROM [Products] WHERE ([CategoryID] = @CategoryID)" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductName], [Description], [ImagePath], [UnitPrice], [CategoryID]) VALUES (@ProductName, @Description, @ImagePath, @UnitPrice, @CategoryID)" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [Description] = @Description, [ImagePath] = @ImagePath, [UnitPrice] = @UnitPrice, [CategoryID] = @CategoryID WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="content">
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                
                           
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('Are you sure you want to delete this author?')" CausesValidation="false" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
                           
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>  
    </div>
    <br />
    <br />
    <h4>Insert New Product<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO [Products] ([ProductName], [Description], [ImagePath], [UnitPrice], [CategoryID]) VALUES (@ProductName, @Description, @ImagePath, @UnitPrice, @CategoryID)" SelectCommand="SELECT [ProductName], [Description], [ImagePath], [UnitPrice], [CategoryID] FROM [Products]">
        <InsertParameters>
            <asp:Parameter Name="ProductName" />
            <asp:Parameter Name="Description" />
            <asp:Parameter Name="ImagePath" />
            <asp:Parameter Name="UnitPrice" />
            <asp:Parameter Name="CategoryID" />
        </InsertParameters>
        </asp:SqlDataSource>
    </h4>
    <div class="content">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource3" DefaultMode="Insert">
            <Fields>
                <asp:CommandField ShowInsertButton="True" ShowCancelButton="False" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <br />
    </div>


</asp:Content>

