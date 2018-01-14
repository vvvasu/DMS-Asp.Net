<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DMS.Pages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        height: 711px;
    }
        .auto-style12 {
            color: #000000;
        }
        .auto-style19 {
            width: 100%;
            height: 902px;
        margin-top: 0px;
    }
        .auto-style20 {
            font-size: x-large;
        }
        .auto-style21 {
            font-size: x-large;
            width: 393px;
        }
        .checked {
            color: orange;
        }
    .auto-style23 {
        margin-left: 0px;
    }
        .auto-style27 {
            width: 393px;
        }
         #map {
            height: 700px;
            width: 100%;
        }
        .auto-style28 {
            margin-left: 0px;
            height: 457px;
            width: 100%;
        }
        .auto-style29 {
            width: 566px;
            height: 677px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="899px" CssClass="auto-style17">
         
          
        <%
           // if(Session["nic"].Equals(""))
          //  {
          //      btnlogin.Visible = true;
          //}
        %>
         <table align="left" class="auto-style19">
            <tr>
                <td class="auto-style21"><strong>Recent Posts</strong></td>
                <td class="auto-style20"><strong>Incedent Map&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Image ID="Image6" AlternateText="image6" runat="server" Height="132px" Width="204px" />
                   
&nbsp;
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Topic :"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Location :"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Date and Time :"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Threat Level : "></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Description : "></asp:Label>
                    <br />
                    <a href="http://">Read More</a><br /> </td>
                <td rowspan="3">
                    <asp:Panel ID="Panel4" runat="server" Height="814px" >
                         <div id="map" class="auto-style28">
                             <iframe allowfullscreen="" class="auto-style29" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJmZuWSbRS4joRJjAclJYvwKc&amp;key=AIzaSyDGtljPHXOnx4TCuczKreMtszyZcQcghWQ" style="border:0"></iframe>
                         </div>


                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Image ID="Image7" runat="server" Height="132px" Width="204px" />
                    <asp:Label ID="Label6" runat="server" Text="Topic : "></asp:Label>
                    <br /> 
                    <asp:Label ID="Label7" runat="server" Text="Location : "></asp:Label>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Date and Time :"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Threat Level"></asp:Label>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Description : "></asp:Label>
                    <br />
                    
                   
                    <br /> <a href="http://">Read More</a></td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Image ID="Image8" runat="server" Height="130px" Width="206px" />
                    
                    <br /><asp:Label ID="Label12" runat="server" Text="Topic :"></asp:Label>
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Location :"></asp:Label>
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Date and Time :"></asp:Label>
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="Threat Level :"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Description : "></asp:Label>
                    <br />
                    
                    <br /> <a href="http://">Read More</a><br />
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="More Posts" Width="295px" CssClass="auto-style23" />
                    <br />
                </td>
            </tr>
        </table>
        </asp:Panel>

</asp:Content>
