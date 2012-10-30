<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/nivo-slider.css"> 
    <link rel="stylesheet" href="{$ThemeDir}/css/nivo-pascal/pascal.css" type="text/css" media="screen" />
<script src="{$BaseHref}/mysite/javascript/jquery.min.1.4.2.js" type="text/javascript"></script>

<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">

    $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script>
<div id="content"  class="typography">
							
						

	<div id="homepage-tagline-container" >
	
		<div id="homepage-tagline">
		Student Legal Services and UISG have partnered to create the Iowa City Student Rental Guide, the ulitimate off-campus living resource for students. Our mission is to provide students with the resources to protect and empower them when choosing their off-campus housing.
		</div>
		
		<div id="tagline-link-container">
		
			<% if HomePageLinkText1 %>
			<% if HomePageLinkURL1 %> 
			<a class="tagline-link" href="{$HomePageLinkURL1}"><span>$HomePageLinkText1</span></a>
			<% end_if %>
			<% end_if %>
			
			<% if HomePageLinkText2 %>
			<% if HomePageLinkURL2 %> 
			<a class="tagline-link" href="{$HomePageLinkURL2}"><span>$HomePageLinkText2</span></a>
			<% end_if %>
			<% end_if %>
			
			<% if HomePageLinkText3 %>
			<% if HomePageLinkURL3 %> 
			<a class="tagline-link" href="{$HomePageLinkURL3}"><span>$HomePageLinkText3</span></a>
			<% end_if %>
			<% end_if %>

			<% if HomePageLinkText4 %>
			<% if HomePageLinkURL4 %> 
			<a class="tagline-link" href="{$HomePageLinkURL4}"><span>$HomePageLinkText4</span></a>
			<% end_if %>
			<% end_if %>			
	
		</div>
		<div class="clear"></div>	
		
	</div>
	<div id="homepage-feature-container">
	
		<div id="homepage-left-column">
		
		<% if Children %>
			<div id="slider" class="nivoSlider theme-pascal">
			
				<% control Children %>
					<% if LinkURL %>
						<a href="$LinkURL"><img src="<% control Image.SetWidth(500) %>$URL<% end_control %>" title="#htmlcaption-{$Pos}" /></a>
					<% else %>
						<img src="<% control Image.SetWidth(500) %>$URL<% end_control %>" title="#htmlcaption-{$Pos}" /><% 
					<% end_if %>
				<% end_control %>
			
			
			</div>
			<% control Children %>
			
			<div id="htmlcaption-{$Pos}" class="nivo-html-caption">
				<% if LinkURL %>
    			<a href="$LinkURL" target="_blank">$Caption</a>
    			<% else %>
    			$Caption
    			<% end_if %>
    			
    
			</div>
			<% end_control %>
		<% end_if %>	
		
		<!--
			<% control RandomPersonProfile %>
			<div id="homepage-featured-student" class="homepage-feature">
				<h2><a href="{$BaseHref}hawkeye-spotlight#{$URLSegment}">$Title</a></h2>
				<div id="homepage-featured-student-content">
					$Image.SetWidth(150) 
					
					<% if PreviewText %>
					$PreviewText
					<% else %>
					$Content.BigSummary(50)	
					<% end_if %>
					<div style="clear:left"></div>
					<ul class="featured-student-nav">
						<li><a href="$Link">Read more about $Title</a></li>
						<li><a href="$BaseHref/hawkeye-spotlight">View all UISG Members</a></li>
					</ul>
					<div style="clear:left"></div>				
				</div>
			</div>
			<% end_control %>
			-->


			<!--<script src="http://widgets.twimg.com/j/2/widget.js"></script>
<script type="text/javascript">
new TWTR.Widget({
  version: 2,
  type: 'profile',
  rpp: 4,
  interval: 6000,
  width: 500,
  height: 215,
  theme: {
    shell: {
      background: '#6b6a66',
      color: '#ffffff'
    },
    tweets: {
      background: '#ffffff',
      color: '#494949',
      links: '#000'
    }
  },
  features: {
    scrollbar: false,
    loop: false,
    live: true,
    hashtags: true,
    timestamp: true,
    avatars: false,
    behavior: 'all'
  }
}).render().setUser('uisg').start();
</script>-->
	
		
<div id="homepage-contact-form">
<a name="contact"></a>
			<h3>Questions about housing?</h3>
			<p>Have a question about moving in, moving out, troublesome neighbors? <a href="#">Send us an email</a>, or fill out the form below!</p>
			
			$ContactForm

				
		</div><!-- end homepage-contact-form -->
	</div><!-- end homepage-left-column -->
	
	<div id="homepage-right-column">
	
		<div id="featured-news">
				<h2><a href="news/">Articles</a></h2>
            
				
				<div id="headline-container">
					<ul>
						<% control BlogPosts(4) %>
							<li>
							<h3><a href="$Link">$Title</a></h3>
							<p class="posted-by">Last Updated on $Date.Format(F j)</p>
							<p class="blog-content">$Content.Summary(25)</p>
							<p class="read-more"><a href="$Link">Read More</a></p>
							</li>
						<% end_control %>
					</ul>
					
					<p class="see-all-topics"><a href="{$BaseHref}news/">See all topics</a></p>
				</div><!-- end headline-container -->
		
			</div><!-- end featured-news -->
	
	
	
	</div><!-- end homepage-right-column -->	
				
		<div class="clear"></div>
	<div id="homepage-social-media">
		<!--<iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FUniversity-of-Iowa-Student-Government%2F128426757171772&amp;width=500&amp;colorscheme=light&amp;show_faces=false&amp;border_color&amp;stream=true&amp;header=false&amp;height=315" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:500px; height:315px; background: white; float: left;" allowtransparency="false"></iframe>-->
<div class="clear"></div>
	</div><!-- end homepage-social-media -->
	
	<div id="homepage-features2">
	
	
		
		<div class="clear"></div>

	</div><!-- end homepage-features2 -->
	</div>
</div>
