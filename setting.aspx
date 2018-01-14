<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="setting.aspx.cs" Inherits="DMS.Pages.setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            height: 23px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  
        <asp:Panel ID="susetting" runat="server">
            <table style="width: 100%;">
               

<tr>
<td>

    <asp:FormView ID="FormView2" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="nic" DataSourceID="SqlDataSource2" ForeColor="#333333">
        <EditItemTemplate>
            rid:
            <asp:Label ID="ridLabel1" runat="server" Text='<%# Eval("rid") %>' />
            <br />
            nic:
            <asp:Label ID="nicLabel1" runat="server" Text='<%# Eval("nic") %>' />
            <br />
            utype:
            <asp:TextBox ID="utypeTextBox" runat="server" Text='<%# Bind("utype") %>' />
            <br />
            fname:
            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
            <br />
            lname:
            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            tel:
            <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            position:
            <asp:TextBox ID="positionTextBox" runat="server" Text='<%# Bind("position") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            nic:
            <asp:TextBox ID="nicTextBox" runat="server" Text='<%# Bind("nic") %>' />
            <br />
            utype:
            <asp:TextBox ID="utypeTextBox" runat="server" Text='<%# Bind("utype") %>' />
            <br />
            fname:
            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
            <br />
            lname:
            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            tel:
            <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            position:
            <asp:TextBox ID="positionTextBox" runat="server" Text='<%# Bind("position") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            rid:
            <asp:Label ID="ridLabel" runat="server" Text='<%# Eval("rid") %>' />
            <br />
            nic:
            <asp:Label ID="nicLabel" runat="server" Text='<%# Eval("nic") %>' />
            <br />
            utype:
            <asp:Label ID="utypeLabel" runat="server" Text='<%# Bind("utype") %>' />
            <br />
            fname:
            <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
            <br />
            lname:
            <asp:Label ID="lnameLabel" runat="server" Text='<%# Bind("lname") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            tel:
            <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
            <br />
            position:
            <asp:Label ID="positionLabel" runat="server" Text='<%# Bind("position") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>

</td>


    <td colspan="2">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [reporter] WHERE [nic] = @nic" InsertCommand="INSERT INTO [reporter] ([nic], [utype], [fname], [lname], [email], [tel], [city], [position]) VALUES (@nic, @utype, @fname, @lname, @email, @tel, @city, @position)" SelectCommand="SELECT * FROM [reporter]" UpdateCommand="UPDATE [reporter] SET  [utype] = @utype, [fname] = @fname, [lname] = @lname, [email] = @email, [tel] = @tel, [city] = @city, [position] = @position WHERE [nic] = @nic">
            <DeleteParameters>
                <asp:Parameter Name="nic" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nic" Type="String" />
                <asp:Parameter Name="utype" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="position" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="utype" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="nic" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="nic" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="rid" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="rid" />
                <asp:BoundField DataField="nic" HeaderText="NIC #" ReadOnly="True" SortExpression="nic" />
                <asp:BoundField DataField="utype" HeaderText="User Type" SortExpression="utype" />
                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="Email Address" SortExpression="email" />
                <asp:BoundField DataField="tel" HeaderText="Telephone" SortExpression="tel" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>


    </td>

</tr>



                
               
               
      
<tr> <td>      
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [login] WHERE [rep_nic] = @rep_nic AND [rep_email] = @rep_email" InsertCommand="INSERT INTO [login] ([rep_nic], [pass], [utype], [rep_email]) VALUES (@rep_nic, @pass, @utype, @rep_email)" SelectCommand="SELECT * FROM [login]" UpdateCommand="UPDATE [login] SET  [pass] = @pass, [utype] = @utype WHERE [rep_nic] = @rep_nic AND [rep_email] = @rep_email">
                     <DeleteParameters>
                         <asp:Parameter Name="rep_nic" Type="String" />
                         <asp:Parameter Name="rep_email" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="rep_nic" Type="String" />
                         <asp:Parameter Name="pass" Type="String" />
                         <asp:Parameter Name="utype" Type="String" />
                         <asp:Parameter Name="rep_email" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="pass" Type="String" />
                         <asp:Parameter Name="utype" Type="String" />
                         <asp:Parameter Name="rep_nic" Type="String" />
                         <asp:Parameter Name="rep_email" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                 <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="rep_nic,rep_email" DataSourceID="SqlDataSource1" ForeColor="#333333">
                     <EditItemTemplate>
                         id:
                         <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                         <br />
                         rep_nic:
                         <asp:Label ID="rep_nicLabel1" runat="server" Text='<%# Eval("rep_nic") %>' />
                         <br />
                         pass:
                         <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                         <br />
                         utype:
                         <asp:TextBox ID="utypeTextBox" runat="server" Text='<%# Bind("utype") %>' />
                         <br />
                         rep_email:
                         <asp:Label ID="rep_emailLabel1" runat="server" Text='<%# Eval("rep_email") %>' />
                         <br />
                         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </EditItemTemplate>
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <InsertItemTemplate>
                         rep_nic:
                         <asp:TextBox ID="rep_nicTextBox" runat="server" Text='<%# Bind("rep_nic") %>' />
                         <br />
                         pass:
                         <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                         <br />
                         utype:
                         <asp:TextBox ID="utypeTextBox" runat="server" Text='<%# Bind("utype") %>' />
                         <br />
                         rep_email:
                         <asp:TextBox ID="rep_emailTextBox" runat="server" Text='<%# Bind("rep_email") %>' />
                         <br />
                         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                         &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <table class="auto-style19">
                             <tr>
                                 <td>NIC</td>
                                 <td>:</td>
                                 <td><strong>
                                     <asp:Label ID="rep_nicLabel" runat="server" Text='<%# Eval("rep_nic") %>' />
                                     </strong></td>
                             </tr>
                             <tr>
                                 <td>Email</td>
                                 <td>:</td>
                                 <td><strong>
                                     <asp:Label ID="rep_emailLabel" runat="server" Text='<%# Eval("rep_email") %>' />
                                     </strong></td>
                             </tr>
                             <tr>
                                 <td>Password</td>
                                 <td>:</td>
                                 <td><strong>
                                     <asp:Label ID="passLabel" runat="server" Text='<%# Bind("pass") %>' />

                                     </strong></td>
                             </tr>
                             <tr>
                                 <td class="auto-style20">User Type</td>
                                 <td class="auto-style20">:</td>
                                 <td class="auto-style20"><strong>
                                     <asp:Label ID="utypeLabel" runat="server" Text='<%# Bind("utype") %>' />
                                     </strong></td>
                             </tr>
                             <tr>
                                 <td colspan="3"><strong>
                                     <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                     &nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                     &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                     </strong></td>
                                 
                             </tr>
                         </table>
                         <br />
                         &nbsp;&nbsp;
                     </ItemTemplate>
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 </asp:FormView>


              </td>      
    <td colspan="2">


            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="rep_nic,rep_email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="rep_nic" HeaderText="NIC" ReadOnly="True" SortExpression="rep_nic" />
                    <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
                    <asp:BoundField DataField="utype" HeaderText="User Type" SortExpression="utype" />
                    <asp:BoundField DataField="rep_email" HeaderText="Email Address" ReadOnly="True" SortExpression="rep_email" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView>

                </td>    </tr>
            </table>
        </asp:Panel>
     
          


   
    </strong>
   
    </asp:Content>
