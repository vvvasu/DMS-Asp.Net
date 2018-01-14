<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DMaster.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="DMS.Pages.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        * {box-sizing:border-box}
        
    .mySlides {display:none}

        
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        
        .dot {
            height: 13px;
            width: 13px;
            margin: 0.2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }
        
       

        .active {
            background-color: #717171;
        }

        
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        /*@-webkit-keyframes fade {
            from {opacity: .4}
            to {opacity: 1}
        }

        @keyframes fade {
            from {opacity: .4}
            to {opacity: 1}
        }

      
        @media only screen and (max-width: 300px) {
            .text {font-size: 11px}
        }*/

        .auto-style14 {
            width: 998px;
             border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.41);
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
           text-shadow: 2px 2px 4px #000000;
            color: black;
            height: 132px;
        }
        .auto-style15 {
            max-width: 1000px;
            position: relative;
            margin: auto auto 0px auto;
            left: 250px;
            top: 9px;
            height: 163px;
        }

    </style>


     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <table class="auto-style14"> 
        <tr>
            <td>   <div class="auto-style15">

                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Landslide.jpg" Height="268px" Width="475px"/>
                        <div class="text"></div>
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/sri-lanka-floods.jpg" Height="268px" Width="475px" />
                        <div class="text"></div>
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext"></div>
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/SAM_3072-600-1-1.jpg" Height="268px" Width="475px" />
                        
                        <div class="text"></div>
                    </div>



                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
               

                <div style="margin-left:450px">
                    
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                    
                </div>
                <script type="text/javascript">
                                  var slideIndex = 0;
                    showSlides();

                    function showSlides() {
                        var i;
                        var slides = document.getElementsByClassName("mySlides");
                        var dots = document.getElementsByClassName("dot");
                        for (i = 0; i < slides.length; i++) {
                            slides[i].style.display = "none";
                        }
                        slideIndex++;
                        if (slideIndex > slides.length) {
                            slideIndex = 1
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex - 1].style.display = "block";
                        dots[slideIndex - 1].className += " active";
                        setTimeout(showSlides, 5000); 
                    }
               </script>  </td> </tr>
      
    </table>
    <h4>Our Beginning</h4>
    <p>The Disaster Management Centre has been established under the National Council for Disaster Management in accordance with the Sri Lanka Disaster Management Act No. 13 of 2005 passed by the Parliament of Sri Lanka on 13th May 2005.</p>
    <h4>Our Vision</h4>
 	<p>Safer communities and sustainable development in Sri Lanka. </p>
<h4>Our Mission</h4>
 	<p>To create a culture of safety among communities and the nation at large through systematic management of natural, technological and man-made disaster risks.</p>
<h4>Our Objectives</h4>
 	<p>Through countrywide ministries, departments and public corporations, Provincial Councils and local authority administration; and district, division and Grama Niladhari administration; to enforce, coordinate and monitor activities related to,</p>
 	 	<ul><li> Hazard Mapping and Risk Assessment.</li>
 	 	<li>Information Management.</li>
 	 	<li>Long-term disaster mitigation.</li>
 	 	<li>Forecasting, early warning and information dissemination.</li>
 	 	<li>Preparedness to respond to disasters when they occur.</li>
 	 	<li>Emergency Operations Management.</li>
 	 	<li>Management of the post-disaster activities after a disaster.</li> </ul>

</asp:Content>
