<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="DMS.Pages.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            height: 518px;
            text-align: left;
        }
    .auto-style20 {
        height: 40px;
    }
    .auto-style21 {
        height: 35px;
    }
    .auto-style22 {
        width: 171px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server" Height="720px">
       <!-- 
           <div class="auto-style17">
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="Black" CssClass="auto-style18" Height="163px" Width="170px" BorderStyle="Solid" />
            <br />
        </div>
           -->
        <div class="auto-style19" style="float:left;">

<table id="profiletable">

<tr>
    <td class="auto-style21">NIC</td><td colspan="2" class="auto-style21"><asp:TextBox ID="nic" runat="server" Height="30px" Width="248px" ReadOnly="true" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nic" ErrorMessage="NIC Required" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nic" ErrorMessage="**Please Enter a Valid NIC " ForeColor="Red" ValidationExpression="/^[0-9]{9}[vVxX]$/"></asp:RegularExpressionValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>

<tr>
    <td>First Name</td><td colspan="2"> <asp:TextBox ID="fname" runat="server" Height="30px" Width="250px" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td class="auto-style20">Last Name</td><td colspan="2" class="auto-style20"><asp:TextBox ID="lname" runat="server" Height="30px" Width="250px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td>User Type</td><td colspan="2"><asp:TextBox ID="utype" runat="server" Height="30px" Width="250px" OnTextChanged="utype_TextChanged" ></asp:TextBox>
        <br /><asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="250px" DataSourceID="SqlDataSource1" DataTextField="user_type" DataValueField="user_type" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_type] FROM [user_type]"></asp:SqlDataSource>
 
    </td>
</tr>

<tr>
    <td>Email</td><td colspan="2"> <asp:TextBox ID="email" runat="server" Height="30px" Width="250px" ReadOnly="true"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="     ** Please Enter a Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
</tr>

<tr>
    <td>Telephone Number</td><td colspan="2"><asp:TextBox ID="telephone" runat="server" Height="30px" Width="250px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="telephone" ErrorMessage="Telephone Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="telephone" ErrorMessage="** Please Enter a Valid Telephone Number" ForeColor="Red" ValidationExpression="/^[0-9]{10}$/"></asp:RegularExpressionValidator>
    </td>
</tr>

<tr>
    <td>City</td><td colspan="2"><asp:TextBox ID="city" runat="server" Height="30px" Width="150px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city" ErrorMessage="City Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td>Position</td><td colspan="2"><asp:TextBox ID="position" runat="server" Height="30px" Width="150px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="position" ErrorMessage="Position Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td></td><td><asp:Button ID="psave" runat="server" Text="Save" Width="59px" OnClick="psave_Click" /></td><td class="auto-style22"><asp:Button ID="pcancel" runat="server" Text="Cancel" OnClick="pcancel_Click" /></td>
</tr>

<tr>
    <td></td><td>
    <asp:Button ID="pupdate" runat="server" OnClick="pupdate_Click" Text="Update" />
    </td><td class="auto-style22">
        <asp:Button ID="pback" runat="server" OnClick="pback_Click" Text="Back" Width="56px" />
    </td>
</tr>


</table>
            
            </div>

<!-- Login details change start  -->


<!-- start of change password option -->

<div class="auto-style19" style="float:right;">

<table>

   
</table>


</div>

<!-- Login details change end -->
    </asp:Panel>
    </asp:Content>
