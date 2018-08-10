<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="WhiteBackground" Runat="Server">
    <div class="wrapper row3">
         <main class="hoc container clear"> 
              <div class="content">
    <h2 runat="server" id="header">Contact Us</h2>
        <div action="#" method="post">
          
            <label id="fnamelabel" runat="server"> First Name</label>
              <asp:TextBox ID="FirstName" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Firstname" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
          
            <label id="lnamelabel" runat="server"> Last Name</label>
              <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="LastName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

            
            <label ID="emaillabel" runat="server"> E-Mail <span></span></label>
             <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Email" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

            
            <label id="phonelabel" runat="server">Phone Number</label>
              <asp:TextBox ID="PhoneNumber" runat="server" Width="139px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="PhoneNumber" runat="server"  ErrorMessage="Required"></asp:RequiredFieldValidator>

            
            <label id="messagelabel" runat="server">Message</label>
            <asp:TextBox ID="Message" runat="server" Height="218px" Width="374px" TextMode="MultiLine"></asp:TextBox><br/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Message" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

            <asp:Button ID="submitbutton" runat="server" Text="Submit" OnClick="submitbutton_Click" />      
            

            <asp:Label ID="confirmation" runat="server" ></asp:Label>
            <asp:Label ID="Label1" runat="server" ></asp:Label>
            
          
          </div>
          </div>
          </main>
        </div> 
        
        

</asp:Content>

