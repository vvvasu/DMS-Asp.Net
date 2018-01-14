<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="DMS.Pages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
        .auto-style14 {
            width: 100%;
            width: 998px;
             border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.41);
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
           text-shadow: 2px 2px 4px #000000;
            color: black;
            height: 132px;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style16 {
            width: 513px;
        }
        .auto-style17 {
            font-size: large;
        }
    
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   

    <table class="auto-style14">
        <tr>
            <td class="auto-style16" rowspan="2">
                <asp:Panel ID="Panel4" runat="server" Height="275px">
                    <strong>Disaster Management Centre</strong><br />
                    <br />
                    General Office<br /> 120/2, Vidya Mawatha, Colombo 07<br />
                    <br />
                    Emergency Assistance Call<br /> 117<br />
                    <br />
                    Contact Details<br /> Tel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : +94-112-665170
                    <br />
                    Fax&nbsp;&nbsp;&nbsp;&nbsp; : +94-112-665170
                    <br />
                    E-mail : info@dms.gov.lk</asp:Panel>
            </td>
            <td class="auto-style17"><strong>Inquires</strong></td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" CssClass="auto-style15" Width="200px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="E-mail" Width="200px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Message" Height="100px" Width="300px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Submit" />
&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Cansel" />
            </td>
        </tr>
    </table>


   

</asp:Content>
