<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="CategoryManager.aspx.cs" Inherits="InventoryPage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">

    <h1 style="font-size: 36px; text-align: center; font-weight: bold;">Category Manager</h1>
    <br />
    <br />

    
     
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName], [Description], [Image] FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description], [Image]) VALUES (@CategoryName, @Description, @Image)" UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Description] = @Description, [Image] = @Image WHERE [CategoryID] = @CategoryID">
        <DeleteParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="content">
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="CategoryID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                
                           
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
    <h4>Insert New Product<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO [Categories] ([CategoryName], [Description], [Image]) VALUES (@CategoryName, @Description, @Image)" SelectCommand="SELECT [CategoryID], [CategoryName], [Description], [Image] FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @CategoryID" UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Description] = @Description, [Image] = @Image WHERE [CategoryID] = @CategoryID">
        <DeleteParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
    </h4>
    <div class="content">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource3" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="CategoryID" OnItemInserted="DetailsView1_ItemInserted">
            <Fields>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <br />
    </div>


</asp:Content>

