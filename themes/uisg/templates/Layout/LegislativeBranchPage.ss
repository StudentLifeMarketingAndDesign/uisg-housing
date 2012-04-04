<div id="content"  class="typography">

	<div id="content1">
	
		<div id="branch-intro">
			<h1>$Title</h1>
			
		<div id="committee-list">
			<h2>Committees</h2>
			<ul>
			<% control AllCommittees %>
			
			<li><a href="#committee-{$ID}">$Title</a></li>
			
			<% end_control %>
			</ul>
		
		</div>
		
			$Content
			
			
			
			<% if MainImage %><img src="http://dummyimage.com/400x400" /><% end_if %>
			
			<div class="clear"></div>
			
		</div>
		

		
		<div id="branch-content">
		
		<% control Speaker %>
			<table class="speaker">
				<tbody>
				
					<tr>
						<td><a href="$Link">$MainImage</a></td>
					</tr>
					<tr>
						<td class="speaker-info"><a href="$Link">$Position $FirstName $LastName</a></td>
					</tr>
				</tbody>
			</table>
		<% end_control %>
		
		<% control Secretary %>
			<table class="secretary">
				<tbody>
				
					<tr>
						<td><a href="$Link">$MainImage</a></td>
					</tr>
					<tr>
						<td class="sec-info"><a href="$Link">$Position $FirstName $LastName</a></td>
					</tr>
				</tbody>
			</table>
		<% end_control %>
		<div style="clear:both"></div>
			<% if AllCommittees %>
			
			<% control AllCommittees %>
			<div class="committee">
			<% if Persons %>
			<div class="committee-header">
				<h2 id="committee-$ID">$Title</h2>
				<span class="btt-head"><a href="#">Back to Top</a></span>
				<div style="clear:both"></div>

			</div>
				<% if Chair %>
				<h3 style="clear: both">Chair: <a href="$Link">$Chair.FirstName $Chair.LastName</a></h3>
				<% end_if %>

				<table class="branch-people">
					<tbody>
		
						<% control BranchPersonPages %>
							<tr class="$EvenOdd">
								<td class="img"><% if MainImage %><a href="$Link">$MainImage.CroppedImage(320,180)</a><% else %><span>No Image Available</span><% end_if %></td>
								<td class="name"><span class="pos">$Position</span><br /><span class="name"><a href="$Link">$FirstName $LastName</a></span><% if EmailAddress %><span class="contact-person-link"><a href="mailto:$EmailAddress">Contact $FirstName</a></span></span><% end_if %></td>
								<td class="com"><span class="com-head">Committee(s):</span><br /><% if Committees %><ul><% control Committees %><li><a href="#committee-{$ID}">$Title</a></li><% end_control %></ul><% end_if %></td>
							
							</tr>
						<% end_control %>
					</tbody>	
				</table>
				<!--<span class="btt"><a href="#">Back to Top</a></span>-->
				
			<% end_if %><!-- end if branchpersonpages -->
					</div><!-- end committees div -->

		<% end_control %><!-- end control allcommittees -->

			<% end_if %><!-- end if allcommittees -->
			
			
			<div class="clear"></div>
		
		
		
		
		</div>
		

	
	</div>

</div>