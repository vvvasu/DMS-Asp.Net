<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="DMS.Pages.post" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style type="text/css">
     
       #map {
        height: 100%;
      }
  
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:Panel ID="Panel1" runat="server">

   
    <asp:Panel ID="loginstatus" runat="server">
       

    </asp:Panel>
        
    <asp:Panel ID="non_reader" runat="server">
        <table id="table_addpost">

            <tr>
    <td>ID</td><td>:</td><td><asp:TextBox ID="txt_inc_id" runat="server" ReadOnly="True"></asp:TextBox></td>
</tr>

<tr>
    <td>Author Email</td><td>:</td><td><asp:TextBox ID="txt_rep_email" runat="server" ></asp:TextBox></td>
</tr>
    <tr>
    <td>Category</td><td>:</td><td><asp:TextBox ID="txt_inc_type" runat="server"></asp:TextBox></td>
</tr>
 <tr>
 <td>Title</td><td>:</td><td><asp:TextBox ID="txt_inc_title" runat="server"></asp:TextBox></td>
</tr>
    <tr>
    <td>Description</td><td>:</td><td><asp:TextBox ID="txt_inc_desc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
</tr>
    <tr>
    <td>Date</td><td>:</td><td><asp:TextBox ID="txt_inc_date" runat="server" ></asp:TextBox>
        <br> <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </td><td>
        <asp:Button ID="Button1" runat="server" Text="Show Calender" OnClick="Button1_Click" /></td>
</tr>
<tr>
    <td>Location</td><td>:</td><td><asp:TextBox ID="txt_inc_location" runat="server" TextMode="SingleLine"></asp:TextBox></td>
</tr> 
            
<!--  start of Map with search bar -->
            <%--  --%>
           <asp:Panel ID="Panel2" runat="server">
                
<tr>

   <input id="pac-input" class="controls" type="text" placeholder="Search Box">
       <div id="floating-panel">
    
    </div>
    <div id="map"></div>
    
    <script>
       

      var map;
      var markers = [];

      function initMap() {
        var haightAshbury = {lat: 6.926997, lng: 79.863984};
       

        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: haightAshbury,
          mapTypeId: 'terrain'
        });

        
        map.addListener('click', function(event) {
          addMarker(event.latLng);
        });

       
        addMarker(haightAshbury);
      }

     
      function addMarker(location) {
        var marker = new google.maps.Marker({
          position: location,
          map: map
        });
        markers.push(marker);
      }

      
      function setMapOnAll(map) {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(map);
        }
      }

   
      function clearMarkers() {
        setMapOnAll(null);
      }

      function showMarkers() {
        setMapOnAll(map);
      }

      function deleteMarkers() {
        clearMarkers();
        markers = [];
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1RsajKTran7KCMAdc6H6rOrQHHsT8L6k&callback=initMap">
    </script>

</tr>
                    
            </asp:Panel>
            
<!--  end of Map with search bar -->
            
             
 <tr>
 <td>Threat Level</td><td>:</td><td>
     <asp:DropDownList ID="drop_tlevel" runat="server" OnSelectedIndexChanged="drop_tlevel_SelectedIndexChanged">
         <asp:ListItem Selected="True">None</asp:ListItem>
         <asp:ListItem Value="Low">Low</asp:ListItem>
         <asp:ListItem Value="Medium">Medium</asp:ListItem>
         <asp:ListItem Value="High">High</asp:ListItem>
     </asp:DropDownList></td>
</tr>

            <asp:Panel ID="reporter_status" runat="server">

<tr>
 <td>Status</td><td>:</td><td>
     <asp:DropDownList ID="DropDownListM" runat="server" OnSelectedIndexChanged="drop_tlevel_SelectedIndexChanged">
         <asp:ListItem Selected="True" Value="h">Hide</asp:ListItem>
         <asp:ListItem Value="s">Show</asp:ListItem>
     </asp:DropDownList></td>
</tr>

            </asp:Panel>

<tr>
    <td colspan="3">
        <asp:Button ID="btn_add_post" runat="server" Text="Add Post" OnClick="btn_add_post_Click" />
        <asp:Button ID="btn_cancel_post" runat="server" Text="Cancel" OnClick="btn_cancel_post_Click" />
    </td>
</tr>

    </table>


 </asp:Panel>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [reporter] WHERE [nic] = @nic" InsertCommand="INSERT INTO [reporter] ([nic], [utype], [fname], [lname], [email], [tel], [city]) VALUES (@nic, @utype, @fname, @lname, @email, @tel, @city)" SelectCommand="SELECT * FROM [reporter]" UpdateCommand="UPDATE [reporter] SET [rid] = @rid, [utype] = @utype, [fname] = @fname, [lname] = @lname, [email] = @email, [tel] = @tel, [city] = @city WHERE [nic] = @nic">
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
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="rid" Type="Int32" />
        <asp:Parameter Name="utype" Type="String" />
        <asp:Parameter Name="fname" Type="String" />
        <asp:Parameter Name="lname" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="tel" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="nic" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>


<asp:Panel ID="Admin_User_Panel_Post" runat="server">


      

</asp:Panel>
<!-- end Admin User Panel post  -->
        <asp:Panel ID="managerpanal" runat="server">
          <table> <tr> <td>  <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="inc_id" DataSourceID="SqlDataSource3" ForeColor="#333333" DefaultMode="Insert">
                <EditItemTemplate>
                    inc_id:
                    <asp:Label ID="inc_idLabel1" runat="server" Text='<%# Eval("inc_id") %>' />
                    <br />
                    rep_email:
                    <asp:TextBox ID="rep_emailTextBox" runat="server" Text='<%# Bind("rep_email") %>' />
                    <br />
                    inc_type:
                    <asp:TextBox ID="inc_typeTextBox" runat="server" Text='<%# Bind("inc_type") %>' />
                    <br />
                    inc_title:
                    <asp:TextBox ID="inc_titleTextBox" runat="server" Text='<%# Bind("inc_title") %>' />
                    <br />
                    inc_description:
                    <asp:TextBox ID="inc_descriptionTextBox" runat="server" Text='<%# Bind("inc_description") %>' />
                    <br />
                    inc_date:
                    <asp:TextBox ID="inc_dateTextBox" runat="server" Text='<%# Bind("inc_date") %>' />
                    <br />
                    inc_location:
                    <asp:TextBox ID="inc_locationTextBox" runat="server" Text='<%# Bind("inc_location") %>' />
                    <br />
                    inc_tlevel:
                    <asp:TextBox ID="inc_tlevelTextBox" runat="server" Text='<%# Bind("inc_tlevel") %>' />
                    <br />
                    inc_status:
                    <asp:TextBox ID="inc_statusTextBox" runat="server" Text='<%# Bind("inc_status") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    rep_email:
                    <asp:TextBox ID="rep_emailTextBox" runat="server" Text='<%# Bind("rep_email") %>' />
                    <br />
                    inc_type:
                    <asp:TextBox ID="inc_typeTextBox" runat="server" Text='<%# Bind("inc_type") %>' />
                    <br />
                    inc_title:
                    <asp:TextBox ID="inc_titleTextBox" runat="server" Text='<%# Bind("inc_title") %>' />
                    <br />
                    inc_description:
                    <asp:TextBox ID="inc_descriptionTextBox" runat="server" Text='<%# Bind("inc_description") %>' />
                    <br />
                    inc_date:
                    <asp:TextBox ID="inc_dateTextBox" runat="server" Text='<%# Bind("inc_date") %>' />
                    <br />
                    inc_location:
                    <asp:TextBox ID="inc_locationTextBox" runat="server" Text='<%# Bind("inc_location") %>' />
                    <br />
                    inc_tlevel:
                    <asp:TextBox ID="inc_tlevelTextBox" runat="server" Text='<%# Bind("inc_tlevel") %>' />
                    <br />
                    inc_status:
                    <asp:TextBox ID="inc_statusTextBox" runat="server" Text='<%# Bind("inc_status") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    inc_id:
                    <asp:Label ID="inc_idLabel" runat="server" Text='<%# Eval("inc_id") %>' />
                    <br />
                    rep_email:
                    <asp:Label ID="rep_emailLabel" runat="server" Text='<%# Bind("rep_email") %>' />
                    <br />
                    inc_type:
                    <asp:Label ID="inc_typeLabel" runat="server" Text='<%# Bind("inc_type") %>' />
                    <br />
                    inc_title:
                    <asp:Label ID="inc_titleLabel" runat="server" Text='<%# Bind("inc_title") %>' />
                    <br />
                    inc_description:
                    <asp:Label ID="inc_descriptionLabel" runat="server" Text='<%# Bind("inc_description") %>' />
                    <br />
                    inc_date:
                    <asp:Label ID="inc_dateLabel" runat="server" Text='<%# Bind("inc_date") %>' />
                    <br />
                    inc_location:
                    <asp:Label ID="inc_locationLabel" runat="server" Text='<%# Bind("inc_location") %>' />
                    <br />
                    inc_tlevel:
                    <asp:Label ID="inc_tlevelLabel" runat="server" Text='<%# Bind("inc_tlevel") %>' />
                    <br />
                    inc_status:
                    <asp:Label ID="inc_statusLabel" runat="server" Text='<%# Bind("inc_status") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [incident] WHERE [inc_id] = @inc_id" InsertCommand="INSERT INTO [incident] ([rep_email], [inc_type], [inc_title], [inc_description], [inc_date], [inc_location], [inc_tlevel], [inc_status]) VALUES (@rep_email, @inc_type, @inc_title, @inc_description, @inc_date, @inc_location, @inc_tlevel, @inc_status)" SelectCommand="SELECT * FROM [incident]" UpdateCommand="UPDATE [incident] SET [rep_email] = @rep_email, [inc_type] = @inc_type, [inc_title] = @inc_title, [inc_description] = @inc_description, [inc_date] = @inc_date, [inc_location] = @inc_location, [inc_tlevel] = @inc_tlevel, [inc_status] = @inc_status WHERE [inc_id] = @inc_id">
                <DeleteParameters>
                    <asp:Parameter Name="inc_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rep_email" Type="String" />
                    <asp:Parameter Name="inc_type" Type="String" />
                    <asp:Parameter Name="inc_title" Type="String" />
                    <asp:Parameter Name="inc_description" Type="String" />
                    <asp:Parameter DbType="Date" Name="inc_date" />
                    <asp:Parameter Name="inc_location" Type="String" />
                    <asp:Parameter Name="inc_tlevel" Type="String" />
                    <asp:Parameter Name="inc_status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="rep_email" Type="String" />
                    <asp:Parameter Name="inc_type" Type="String" />
                    <asp:Parameter Name="inc_title" Type="String" />
                    <asp:Parameter Name="inc_description" Type="String" />
                    <asp:Parameter DbType="Date" Name="inc_date" />
                    <asp:Parameter Name="inc_location" Type="String" />
                    <asp:Parameter Name="inc_tlevel" Type="String" />
                    <asp:Parameter Name="inc_status" Type="String" />
                    <asp:Parameter Name="inc_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </td>
           </tr> </table>




        </asp:Panel>

        <asp:Panel ID="reporterpost" runat="server">

           <!-- <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM incident WHERE inc_status='s'"></asp:SqlDataSource>
            -->
                      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="inc_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="inc_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="inc_id" />
                    <asp:BoundField DataField="rep_email" HeaderText="Author" SortExpression="rep_email" />
                    <asp:BoundField DataField="inc_title" HeaderText="Title" SortExpression="inc_title" />
                    <asp:DynamicField DataField="inc_description" HeaderText="Description" />
                    <asp:DynamicField DataField="inc_date" HeaderText="Date" />
                    <asp:BoundField DataField="inc_location" HeaderText="Location" SortExpression="inc_location" />
                    <asp:BoundField DataField="inc_tlevel" HeaderText="Threat level" SortExpression="inc_tlevel" />
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
        </asp:Panel>

        <asp:Panel ID="reportinsertpanel" runat="server">

            <table>
                <tr>

                    <td>
                        <asp:FormView ID="FormView2" runat="server" DefaultMode="Insert" DataSourceID="SqlDataSource4"></asp:FormView>

                        <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>

                    </td>
                </tr>
            </table>
        </asp:Panel>

</asp:Panel>


   
</asp:Content>
