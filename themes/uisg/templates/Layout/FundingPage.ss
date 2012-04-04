<div id="content"  class="typography">

	<div id="content1">
	<h1>$Title</h1>
	

		<% if FundingDeadlines %>
			<h2>$NextDeadline</h2>	
			
			<h3>All Deadlines:</h3>
			<ul>
			<% control FundingDeadlines %>
				<li>$DeadlineTitle - $Deadline.Format(F j Y)</li>
			<% end_control %>
			</ul>
		<% end_if %>

	
	$Content
	$Form
	</div>
</div>