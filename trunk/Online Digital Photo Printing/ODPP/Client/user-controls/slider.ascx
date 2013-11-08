﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="slider.ascx.cs" Inherits="ODPP.Client.user_controls.slider" %>



        <link rel="stylesheet" type="text/css" href="../css/style.css" />
		<%--<script type="text/javascript" src="../js/modernizr.custom.53451.js"></script>--%>


        <div class="container">
	
			<section id="dg-container" class="dg-container">
				<div class="dg-wrapper">
					<a href="#"><img src="../js/img/1.jpg" alt="image01"><div>http://www.colazionedamichy.it/</div></a>
					<a href="#"><img src="../js/img/2.jpg" alt="image02"><div>http://www.percivalclo.com/</div></a>
					<a href="#"><img src="../js/img/3.jpg" alt="image03"><div>http://www.wanda.net/fr</div></a>
					<a href="#"><img src="../js/img/4.jpg" alt="image04"><div>http://lifeingreenville.com/</div></a>
					<a href="#"><img src="../js/img/5.jpg" alt="image05"><div>http://circlemeetups.com/</div></a>
					<a href="#"><img src="../js/img/6.jpg" alt="image06"><div>http://www.castirondesign.com/</div></a>
					<a href="#"><img src="../js/img/7.jpg" alt="image07"><div>http://www.foundrycollective.com/</div></a>
					<a href="#"><img src="../js/img/8.jpg" alt="image08"><div>http://www.mathiassterner.com/</div></a>
					<a href="#"><img src="../js/img/9.jpg" alt="image09"><div>http://learnlakenona.com/</div></a>
					<a href="#"><img src="../js/img/10.jpg" alt="image10"><div>http://www.neighborhood-studio.com/</div></a>
					<a href="#"><img src="../js/img/11.jpg" alt="image11"><div>http://www.beckindesign.com/</div></a>
					<a href="#"><img src="../js/img/12.jpg" alt="image12"><div>http://kicksend.com/</div></a>
				</div>
				<nav>	
					<span class="dg-prev">&lt;</span>
					<span class="dg-next">&gt;</span>
				</nav
			</section>
        </div>
<%--		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>--%>
		<script type="text/javascript" src="../js/jquery.gallery.js"></script>
		<script type="text/javascript">
			$(function() {
				$('#dg-container').gallery({
					autoplay	:	true
				});
			});
		</script>
