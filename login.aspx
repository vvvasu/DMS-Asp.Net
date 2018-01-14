<%@ Page Title="" Language="C#" UnObtrusiveValidationMode="none" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DMS.Pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
   
        /*.auto-style3 {
            width: 100%;
            height: 126px;
        }*/
        .auto-style4 {
            text-align: center;
            width: 344px;
        }
        .auto-style5 {
            color: #ffffff;
        }
        .auto-style6 {
            color: #000000;
        }
        .table{
            
    border-radius: 5px;
    /*background-color: rgba(255, 255, 255, 0.41);
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
    text-shadow: 2px 2px 4px #000000;
    color:black;
    
        }
        .auto-style7 {
            font-size: xx-large;
            color: #000066;
        }
        .auto-style8 {
            height: 324px;
        }
        .auto-style9 {
            border-radius: 5px;
           /* background-color: rgba(255, 255, 255, 0.41);
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
           text-shadow: 2px 2px 4px #000000;
            color: black;
            height: 241px;
                width: 404px;
            }
        .auto-style10 {
            margin-bottom: 0px;
        }
            .auto-style17 {
                font-size: xx-large;
                color: #000066;
                width: 392px;
                height: 80px;
                margin-top: 44px;
            }
            .auto-style18 {
                color: #FFFFFF;
                margin-bottom: 0px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel class="tab" ID="Panel6" runat="server" Height="349px" CssClass="auto-style18">
        <br />

        
        <table class="auto-style9" align="center" class="auto-style3">
                      
 <caption class="auto-style17">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp; DMS Western&nbsp;&nbsp;&nbsp;&nbsp; Province<br /> </strong><br/>&nbsp;</caption>
            
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px" placeholder="Email Address" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                    <br />


                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="** Please Enter a Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong>


                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="250px" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                    <br />
                    <asp:Button ID="Button2" runat="server" Height="26px" Text="Sign In" Width="259px" OnClick="Button2_Click1" />
                    <br />
                    <br />
                    <span class="auto-style5">Forgot Password? 
                    <br />
                    </span>
                    <br class="auto-style5" />
                    <span class="auto-style6">Not a Member? </span><span class="auto-style5"><a href="Join.aspx">Join Now</a></span></td>
            </tr>

           
        </table>
        <br class="auto-style7" />
    </asp:Panel>
</asp:Content>
<%--  --%>