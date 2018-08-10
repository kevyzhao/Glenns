<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Response.aspx.cs" Inherits="Response" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="wrapper row3">
         <main class="hoc container clear">
          <div class="content">
          <div action="#" method="post">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ContactUs] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ContactUs] ([fname], [lname], [email], [message], [phone], [Completed], [response]) VALUES (@fname, @lname, @email, @message, @phone, @Completed, @response)" SelectCommand="SELECT [fname], [lname], [email], [message], [phone], [Id], [Completed], [response] FROM [ContactUs]" UpdateCommand="UPDATE [ContactUs] SET [fname] = @fname, [lname] = @lname, [email] = @email, [message] = @message, [phone] = @phone, [Completed] = @Completed, [response] = @response WHERE [Id] = @Id"> 
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="Completed" Type="Boolean" />
            <asp:Parameter Name="response" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="Completed" Type="Boolean" />
            <asp:Parameter Name="response" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True"  >
                  <Columns>
                      <asp:CommandField ShowSelectButton="True" />
                      <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                      <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                      <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                  </Columns>
              </asp:GridView>

              <div class="wrapper row3">
                  <div class="fl_left">

                      <%--NEED HELP WITH AJAX--%>
                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [message], [response], [Completed], [Id] FROM [ContactUs] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [ContactUs] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ContactUs] ( [response], [Completed]) VALUES (@message, @response, @Completed)" UpdateCommand="UPDATE [ContactUs] SET [response] = @response, [Completed] = @Completed WHERE [Id] = @Id">
                                  <DeleteParameters>
                                      <asp:Parameter Name="Id" Type="Int32" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="message" Type="String" />
                                      <asp:Parameter Name="response" Type="String" />
                                      <asp:Parameter Name="Completed" Type="Boolean" />
                                  </InsertParameters>
                                  <SelectParameters>
                                      <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                                  </SelectParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="response" Type="String" />
                                      <asp:Parameter Name="Completed" Type="Boolean" />
                                      <asp:Parameter Name="Id" Type="Int32" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>
                              <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="351px" Width="413px" DataKeyNames="Id">
                                  <Fields>
                                      <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                                      <asp:BoundField DataField="response" HeaderText="response" SortExpression="response" />
                                      <asp:CheckBoxField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                                  </Fields>
                              </asp:DetailsView>
                             </ContentTemplate>
                            </asp:UpdatePanel>
                     
                  </div>

                  <div class="one_half">
                      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                          <ContentTemplate>
                      <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="408px" Width="522px" DataKeyNames="Id">
                          <Fields>
                              <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" ReadOnly="True" />
                              <asp:TemplateField HeaderText="response" SortExpression="response">
                                  <EditItemTemplate>
                                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("response") %>'></asp:TextBox>
                                  </EditItemTemplate>
                                  <InsertItemTemplate>
                                      <asp:TextBox TextMode="MultiLine" Width="50em" Height="50em" ID="TextBox1" runat="server" Text='<%# Bind("response") %>'></asp:TextBox>
                                  </InsertItemTemplate>
                                  <ItemTemplate>
                                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("response") %>'></asp:Label>
                                  </ItemTemplate>
                              </asp:TemplateField>
                              <asp:CheckBoxField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                              <asp:CommandField ShowEditButton="True" />
                          </Fields>
                      </asp:DetailsView>
                      <br /><br/>
                          </ContentTemplate>
                          </asp:UpdatePanel>
                  </div>
            
            </div>


           </div>
          </div>
          </main>
        </div> 




</asp:Content>

