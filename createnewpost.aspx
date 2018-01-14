<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="createnewpost.aspx.cs" Inherits="DMS.Pages.createnewpost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server" Height="710px">
        <h1> Create New Post</h1>
        <br />
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="307px" placeholder="Topic"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Status</asp:ListItem>
            <asp:ListItem>On Going</asp:ListItem>
            <asp:ListItem>Past</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Threat Level</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
            <asp:ListItem>Medium</asp:ListItem>
            <asp:ListItem>Law</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="217px" placeholder="Location"></asp:TextBox>
        &nbsp;<br />
        <br />
        <br />
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="203px" placeholder="Date and Time"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="195px" placeholder="Author Name"></asp:TextBox>
        <br />
        <br />
&nbsp;<br /> &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Category</asp:ListItem>
            <asp:ListItem>Earthquake</asp:ListItem>
            <asp:ListItem>Electricity Break</asp:ListItem>
            <asp:ListItem>Electricity Leakage</asp:ListItem>
            <asp:ListItem>Fire</asp:ListItem>
            <asp:ListItem>Land Slide</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Type of incident"></asp:TextBox>
        <br />
        <br />
        &nbsp;<br /> &nbsp;<asp:Label ID="Label1" runat="server" Text="Add Image"></asp:Label>
        &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
        <br /> &nbsp;<br />&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="214px" placeholder="Description" Width="825px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Text="Post" Width="138px" />
        <br />
&nbsp;<br />
        <br />
        &nbsp;<br />&nbsp;
        <br />
&nbsp;<br /><br /><br /><br /><br /><br />&nbsp;&nbsp;
    </asp:Panel>
</asp:Content>
