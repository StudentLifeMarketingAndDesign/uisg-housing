<!DOCTYPE html>

<html lang="$ContentLocale">
	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title - The University of Iowa</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<link href='http://fonts.googleapis.com/css?family=Rokkitt&v2' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=EB+Garamond&v2' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/reset.css">

		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
        
        <link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>
	</head>
	 
	<body>

	<div id="govt-bar">
		<div id="govt-bar-content">
		<a href="http://uiowa.edu/" target="_blank" class="uiowa-logo"><img src="$ThemeDir/images/uiowa.png" /></a>
		<span class="govt-bar-division"><a href="http://studentlife.uiowa.edu/">Division of Student Life</a>&nbsp; <a href="$BaseHref" class="active-govt-site">UISG</a> <a href="http://ecgps.uiowa.edu">ECGPS</a></span>
		
		<div class="clear"></div>
		</div>
	
	</div>
	<!-- Header -->
	<div id="header">
	
		<div id="header-content">
				<a href="$BaseURL"><img src="$ThemeDir/images/header.png" /></a>
				
				<div id="nav-container">
					<ul id="nav">
						<% control Menu(1) %>
	
								<li <% if FirstLast %>class="$FirstLast"<% end_if %>><a href="$Link" class="{$FirstLast} {$LinkOrSection}"><span>$MenuTitle</span></a>
									<% if URLSegment = branches %>
										<ul>
										<% control Children %>
											<li><a href="$Link">$MenuTitle</a></li>
										<% end_control %>
										</ul>
									<% end_if %>
								</li>
		
						<% end_control %>
					</ul>
                    
                
                    $SearchForm
				
                    <!--
                    
     				<form  id="SearchForm_SearchForm" action="/housing/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
	<fieldset>
		<legend></legend>
		
			<div id="Search" class="field text  nolabel">
            <div class="middleColumn">
            <input type="text" class="text nolabel" id="SearchForm_SearchForm_Search" name="Search" placeholder="Find Info" />
            </div>
            </div>
		
		
			<input class="action" id="SearchForm_SearchForm_action_results" type="submit" name="action_results" value="Go" title="Go" />
		
	</fieldset>
</form>

!-->
                     
        	
				<div class="clear-left"></div>
	
				</div>
				
		</div>
				
	
	
	</div>
		
		<div id="body-wrapper">
		
			
		
		<!-- Content Area -->
		
			$Layout
			
			
			
			<div id="footer" class="typography">
			
			
				<div id="footer-content">
				
					<ul>
					<% control Menu(1) %>
						<li <% if FirstLast %>class="$FirstLast"<% end_if %> ><a href="$Link">$Title</a></li>
					<% end_control %>
					
					</ul>
					<div class="clear-left"></div>
					<p><a href="{$BaseHref}#contact">Get a hold of us</a>
					<br />
					Phone Number: <strong>319.335.3860</strong>
					<br />
					UISG offices are located on the second floor of the <a href="http://www.uiowa.edu/~maps/i/imu1.htm">IMU (Room 260B)</a>
					<br />
					Our office hours are 10 - 5 every weekday.
					
					
					</div>
					<div id="footer-logos">
					
						<a href="http://uisg.uiowa.edu/"><img src="$ThemeDir/images/uisg_dome_logo.png" /></a>
						<a href="http://www.uiowa.edu/"><img src="$ThemeDir/images/uiowa.png" class="footer-uiowa" /></a>
					
					
					</div>
					
					<div class="clear"></div>
				
				</div><!-- end footer-content -->
			
			
			
			
		</div><!-- end footer -->
		<div style="clear:both"></div>
		

	
	
	</body>
</html>