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
		
			<a class="tagline-link" href="{$BaseHref}about"><span>tenants rights</span></a>
			<a class="tagline-link" href="{$BaseHref}funding"><span>landlord topics</span></a>
            <a class="tagline-link" href="{$BaseHref}funding"><span>move-in ideas</span></a>
            <a class="tagline-link" href="{$BaseHref}funding"><span>roommate contract</span></a>
	
		</div>
		<div class="clear"></div>	
		
	</div>
	<div id="homepage-feature-container">
	
		<div id="homepage-left-column">
		
		<% if Children %>
			<div id="slider" class="nivoSlider theme-pascal">
			
				<% control Children %>
					<% if LinkURL %>
						<a href="$LinkURL"><img src="$Image.URL" title="#htmlcaption-{$Pos}" /></a>
					<% else %>
						<img src="$Image.URL" title="#htmlcaption-{$Pos}" />
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


			<script src="http://widgets.twimg.com/j/2/widget.js"></script>
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
</script>
	
		
<div id="homepage-contact-form">
<a name="contact"></a>
			<h3>Comments, Questions?</h3>
			<p>If you'd like to request funding for your student organization, please take a look at our <a href="{$BaseHref}funding/">funding information</a>.</p>
			
			$ContactForm

				
		</div><!-- end homepage-contact-form -->
	</div><!-- end homepage-left-column -->
	
	<div id="homepage-right-column">
	
		<div id="featured-news">
				<h2><a href="news/">Articles</a></h2>
            
				
				<div id="headline-container">
					<ul>
						<% control BlogPosts(8) %>
							<li>
							<h3><a href="$Link">$Title</a></h3>
							<p class="posted-by"><a href="$Link">Posted on $Date.Format(F j)</a></p>
							<p class="blog-content">$Content.Summary(25)</p>
							<p><a href="$Link">Read More</a></p>
							</li>
						<% end_control %>
					</ul>
					
					<p><a href="{$BaseHref}news/">See all events and news</a></p>
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
