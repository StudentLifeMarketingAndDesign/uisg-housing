<div id="content"  class="typography">

	<div id="content1">
	
		<div id="branch-intro">
			<h1>$Title</h1>
			$Content
			<% if MainImage %><img src="http://dummyimage.com/400x400" /><% end_if %>
			<div class="clear"></div>
		</div>
		
		<div id="branch-content">
		
			<% if Children %>
			<div id="branch-people">
				<h2>$Title</h2>
				<table id="committee-$ID" class="branch-people">
					<tbody>
						
						<% control Children %>
							<tr class="$EvenOdd">
								<td class="img"><% if MainImage %><a href="$Link">$MainImage.CroppedImage(320,180)</a><% else %><span>No Image Available</span><% end_if %></td>
								<td class="name"><span class="pos">$Position</span><br /><span class="name"><a href="$Link">$FirstName $LastName</a></span></td>
							
							</tr>
						<% end_control %>
					</tbody>	
				</table>
			</div>
			<% end_if %>
			
			
			<div class="clear"></div>
		
		
		
		
		</div>
		
		
	
	</div>
</div>