<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="DMS.Pages.create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            margin-left: 7px;
        }
        .auto-style18 {
            margin-left: 8px;
        }
        .auto-style19 {
            margin-left: 9px;
        }
        .auto-style20 {
            width: 617px;
            height: 178px;
        }
        .auto-style21 {
            margin-left: 389px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server" Height="518px">
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17" Height="30px" Width="600px" Placeholder="Disaster"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style18" Height="30px" Width="600px" Placeholder="Loaction"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style19" Height="30px" TextMode="DateTime" Width="600px" Placeholder="Date and Time"></asp:TextBox>
        <br />
        <br />
        <textarea id="TextArea1" class="auto-style20" name="S1" Placeholder="Type the incident"></textarea><br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" CssClass="auto-style21" Text="Delete" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Edit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="Post" />
    </asp:Panel>
</asp:Content>
