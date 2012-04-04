<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% base_tag %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Wingmen</title>

<script type="text/javascript" src="{$ThemeDir}/js/prototype.js"></script>
<script type="text/javascript" src="{$ThemeDir}/js/lightbox.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>

<LINK href="{$ThemeDir}/css/wingman/styles2.css" rel="stylesheet" type="text/css">

</head>
<body>

	<script>
	 $.noConflict();
	var x = 0;
	preload_image = new Image(2552,2026); 
    preload_image.src="{$ThemeDir}/images/wingman/wingman1.jpg"; 
	preload_image2 = new Image(2552,2026); 
    preload_image2.src="{$ThemeDir}/images/wingman/wingman2.jpg";
	preload_image3 = new Image(2552,2026); 
    preload_image3.src="{$ThemeDir}/images/wingman/wingman4.jpg";
	preload_image4 = new Image(2552,2026); 
    preload_image4.src="{$ThemeDir}/images/wingman/wingman6.jpg";
	function moveImage() {
		if (x == 1) {
	      jQuery("body").css("background-image","url('{$ThemeDir}/images/wingman/wingman1.jpg')");
		  x = x + 1;
		} else if (x==2) {
		  jQuery("body").css("background-image","url('{$ThemeDir}/images/wingman/wingman2.jpg')");
		  x = x + 1;
		  		} else if (x==3) {
		  jQuery("body").css("background-image","url('{$ThemeDir}/images/wingman/wingman5.jpg')");
		  x = x + 1;
		} else {
		  jQuery("body").css("background-image","url('{$ThemeDir}/images/wingman/wingman6.jpg')");
		  x = 1;
		}
	}
	//$(window).bind("load", moveImage());
	setInterval('moveImage()',4000);
	</script>

<div id="content-wrapper">

<div id="left-content">
<a href="#"><img src="{$ThemeDir}/images/wingman/wingmanlogo.png" alt="logo" border="0"/></a>
<ul>
<li><a href="/assets/besafe.html" class="myButton2 lbOn"><img src="{$ThemeDir}/images/wingman/besafe.png" alt="Be Safe" border="0"/></a></li>
<li><a href="/assets/besmart.html" class="myButton2 lbOn"><img src="{$ThemeDir}/images/wingman/besmart.png" alt="Be Smart" border="0"/></a></li>
<li><a href="/assets/beawingman.html" class="myButton2 lbOn"><img src="{$ThemeDir}/images/wingman/beawingman.png" alt="Be A Wingman" border="0"/></a></li>
</ul>
</div><!--end #left-content-->

<div id="right-content">

<div class="sideitem">
<h1>Interested?</h1>
<p>Do you have what it takes to be a Wingman? Take the pledge here.</p>
<center><a class="myButton" href="https://docs.google.com/spreadsheet/viewform?formkey=dG03SUJ0VWlISlNQNXE1ZnRtY09SNlE6MQ">Take the Pledge</a></center>
</div><!--end .sideitem-->

<div class="sideitem">
<h1>News</h1>

<h2>Remember: a wingman doesn't take breaks! Watch out for your friends over spring break. Be safe! Be smart! Be a wingman!</h2>
<hr />
<h2>Never fear! Safe Ride is here! Now there's a free late night transportation service for BOTH men and women. If you're in trouble: call 319-467-HOME(4663)</h2>
<hr />
<h2>Ladies: if you're downtown and don't feel safe, just call Nite Ride! They'll pick you up and bring you home for free. Call 319-384-1111</h2>


</div><!--end .sideitem-->

<div class="sideitem">
<h1>Video</h1>
<img src="{$ThemeDir}/images/wingman/video.jpg" alt="Video" />
</div><!--end .sideitem-->

</div><!--end #right-content-->

<div class="clear"></div>

<div id="footer">
<h1>Contact</h1>
<ul>
<li>Brittany Caplin<br>
Campaign President<br />
<a href="mailto:brittany-caplin@uiowa.edu">brittany-caplin@uiowa.edu</a><br />
612-819-0143</li>
<li>Madeleine Stroth<br />
Campaign Manager<br />
<a href="mailto:madeleine-stroth@uiowa.edu">madeleine-stroth@uiowa.edu</a><br />
708-269-7718</li>
<li>Nils Thorson<br />
Marketing Consultant<br />
<a href="mailto:nils-thorson@uiowa.edu">nils-thorson@uiowa.edu</a></li>
<li><a href="https://www.facebook.com/pages/University-of-Iowa-Student-Government/128426757171772"><img src="{$ThemeDir}/images/wingman/facebook.png" alt="Facebook" border="0" /></a></li>
</ul>

</div><!--end #footer-->

</div><!--end #content-wrapper-->

</body>
</html>
