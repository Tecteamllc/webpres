<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        
		<#-- ============ Title and Meta Tags ========== -->
		<title>Industrial - Industrial & Factory Solutions HTML Template</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Quickdev">

		<#-- ================= Favicon ================= -->  
        <link rel="shortcut icon" href="${images_folder}/favicon.png">
		
		<#-- ================= CSS ===================== -->  
         
        
        <#-- ================= Fonts =================== -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
</head>

<body class="${css_class}">
<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />
	
<!-- LOADER -->
<div id="loader-wrapper">
<div id="loader"></div>
</div>
<!-- LOADER -->

<@liferay.control_menu />
<!-- MAIN CONTAINER -->
<div class="wrapper">
    <!-- MAIN HEADER -->
    <div class="main-header">
		<div class="main-slider">
		    <!-- MAIN NAVBAR -->
		    <div class="main-navbar">
				<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
					<div class="top-header">
						<div class="container content-top">
							<div class="leftside">
								<div class="header-items">
									<p><i class="fa fa-location-arrow" aria-hidden="true"></i>&nbsp; 1415 Woodlawn Ave Buffalo</p>
								</div>
								<div class="header-items">
									<p><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; support@industrial.com</p>
								</div>
								<div class="header-items">
									<p><i class="fa fa-phone" aria-hidden="true"></i>&nbsp; 212-869-3323</p>
								</div>
							</div>
							<div class="rightside">
								<div class="header-items"><a href="#"><p><i class="fa fa-facebook" aria-hidden="true"></i></p></a></div>
								<div class="header-items"><a href="#"><p><i class="fa fa-twitter" aria-hidden="true"></i></p></a></div>
								<div class="header-items"><a href="#"><p><i class="fa fa-instagram" aria-hidden="true"></i></p></a></div>
								<div class="header-items no-margin"><a href="#"><p><i class="fa fa-youtube-play" aria-hidden="true"></i></p></a></div>
							</div>
						</div>
					</div>
					<hr class="top">
					<div class="container">
						<div class="navbar-header" >
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
						  <a class="navbar-brand" href="/templates/industrial/theme4"><div class="logo-brand"><img src="${images_folder}/master/logo.png" alt=""></div></a>
						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav navbar-right">
							<li><a href="index.html">HOME</a></li>
							<li><a href="about.html">ABOUT</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SOLUTIONS <span class="caret-drop"></span></a>
								<ul class="dropdown-menu">
									<li class="divider-top"></li>
									<li><a href="chemical-research.html">Chemical Research</a></li>
									<li class="divider"></li>
									<li><a href="material-engineering.html">Material Engineering</a></li>
									<li class="divider"></li>
									<li><a href="agricultural-engineering.html">Agricultural Engineering</a></li>
									<li class="divider"></li>
									<li><a href="power-and-energy.html">Power and Energy</a></li>
									<li class="divider"></li>
									<li><a href="petroleum-and-gas.html">Petroleum and Gas</a></li>
									<li class="divider"></li>
									<li><a href="mechanical-engineering.html">Mechanical Engineering</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PROJECTS <span class="caret-drop"></span></a>
								<ul class="dropdown-menu">
									<li class="divider-top"></li>
									<li><a href="project-grid-two-columns.html">Grid Two Columns</a></li>
									<li class="divider"></li>
									<li><a href="project-grid-three-columns.html">Grid Three Columns</a></li>
									<li class="divider"></li>
									<li><a href="project-grid-four-columns.html">Grid Four Columns</a></li>
									<li class="divider"></li>
									<li><a href="project-details.html">Project Details</a></li>   
								</ul>
							</li>
							<li><a href="contact.html">CONTACT</a></li>
							<li><a href="shortcodes.html">SHORTCODES</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PAGES <span class="caret-drop"></span></a>
								<ul class="dropdown-menu">
									<li class="divider-top"></li>
									<li><a href="blog-grid.html">Blog Grid</a></li>
									<li class="divider"></li>
									<li><a href="blog-single.html">Blog Single</a></li>
									<li class="divider"></li>
									<li><a href="faq.html">Faq</a></li>
									<li class="divider"></li>
									<li><a href="shop-grid.html">Shop Grip</a></li>
									<li class="divider"></li>
									<li><a href="product-detail.html">Product Details</a></li>
									<li class="divider"></li>
									<li><a href="careers.html">Careers</a></li>
									<li class="divider"></li>
									<li><a href="404.html">404 Page</a></li>
									<li class="divider"></li>
									<li><a href="team.html">Team</a></li>
									<li class="divider"></li>
									<li><a href="pricing.html">Pricing</a></li>
								</ul>
							</li>
						  </ul>
						</div>
					</div>
				</nav>
			</div><!-- END MAIN NAVBAR -->
		</div>
	</div>
	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
</div>
    
<div class="main-footer">
     <div class="main">
         <div class="content">
             <div class="section">
                 <div class="top-footer">
                    <div class="row">
                      <div class="col-md-3">
                        <div class="span-footer">
                            <div class="logo-brand"><img src="${images_folder}/master/logo.png" alt=""></div>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="span-footer">
                            <h6><i class="fa fa-location-arrow" aria-hidden="true"></i>&nbsp; OUR OFFICE</h6>
                            <p>1415 Woodlawn Ave Buffalo</p>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="span-footer">
                            <h6><i class="fa fa-phone" aria-hidden="true"></i>&nbsp; CALL US</h6>
                            <p>212-869-3323</p>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="span-footer">
                            <h6><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp; WORKING OURS</h6>
                            <p>8.00 am to 6:00 pm</p>
                        </div>
                      </div>
                    </div>
                 </div>
                 <hr class="footer">
                 <div class="row">
                   <div class="col-md-5 footer-column">
                     <h5 class="footer-heading">ABOUT</h5>
                     <hr class="short-footer">       
                     <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                     <div class="social-footer">
                         <div class="social-icons"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></div>  
                         <div class="social-icons"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></div>  
                         <div class="social-icons"><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></div>  
                         <div class="social-icons"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></div>   
                     </div>
                   </div>
                   <div class="col-md-3 news-column">
                     <h5 class="footer-heading">LATEST NEWS</h5>
                     <hr class="short-footer">
                     <p>Contrary to popular belief, Lorem Ipsum. </p>
                     <hr>
                     <p>Combined with a handful of model sentence structures. </p>
                     <hr>   
                     <p>popularised in the 1960s with the release of Letraset sheets.</p>
                   </div>
                   <div class="col-md-4 footer-column">
                     <h5 class="footer-heading">LATEST PROJECTS</h5>
                     <hr class="short-footer">
                     <div class="row">
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                      <div class="col-xs-3 col-sm-3 col-md-3"><div class="footer-thumbnail"><a href="#"><img src="http://placehold.it/500x333" alt=""></a></div></div>
                    </div>
                   </div>
                 </div>
             </div>
         </div>
     </div>   
</div>

<div class="bottom-footer">
    <div class="main">
        <div class="section">
            <div class="column-left">
                <p>© All Rights Reserved, Industrial</p>  
            </div>
            <div class="column-right">
                <p><span><a href="#">Terms & Conditions</a></span> &nbsp;•&nbsp; <span><a href="#">Privacy</a></span></p>
            </div>
        </div>
    </div>
</div>
    
    <a href="#0" class="cd-top">Top</a>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="${javascript_folder}/top.js"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/flickity/1.0.0/flickity.pkgd.js'></script> 
    <script src="${javascript_folder}/testimonials.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.2.min.js"></script>
    <script src="${javascript_folder}/counter.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.0/jquery.waypoints.min.js"></script>
    <script src="${javascript_folder}/jquery.counterup.js"></script>
    <script src="${javascript_folder}/bootstrap.js"></script>
    <script src="${javascript_folder}/contact.js"></script>
    <script src="${javascript_folder}/validator.js"></script>
    <script src="${javascript_folder}/navbar.js"></script>
    <script src="${javascript_folder}/filters.js"></script>
    <script src="${javascript_folder}/maps-style.js"></script>
    <script src="${javascript_folder}/loader.js"></script>
   <#-- =============== SCRIPTS ================== -->

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
      ga('create', 'UA-101241150-1', 'auto');
      ga('send', 'pageview');
    </script>
    
    
<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />
    
</body>

</html>