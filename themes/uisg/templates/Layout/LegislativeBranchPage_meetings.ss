<!-- content -->

<div id="content"  class="typography">

	<div id="content1">
	<p><a href="$Link">Back to the Legislative Branch</a></p>
	<% if Meeting %>
	<p><a href="{$Link}/meetings/">Back to Meetings</a></p>
		<% control Meeting %>
			<h1>Meeting Notes for $Date.Format(F d)</h1>
			$Notes
		<% end_control %>
	<% else %>
		<h1>Meetings</h1>
		<% if SenateMeetings %>
			<h2>Senate Meetings</h2>
			<table id="meetings" class="senate">
					<tr>
						<th>Meeting Date</th>
						<th>Meeting Location</th>
					</tr>
					<% control SenateMeetings %>
					<tr class="$EvenOdd">
						<td><% if Notes %><a href="$Link">$Date.Format(F d&#44; Y) $Time (meeting notes)</a><% else %>
							$Date.Format(F d&#44; Y) $Time
							<% end_if %>
						</td>
						<td>$Location</td>
					</tr>
					<% end_control %>
			</table>

				<% end_if %>
		
		<h2>Committee Meetings</h2>
			$CommitteeMeetingsContent
		<% if CommitteeMeetings %>

			<table id="meetings" class="committee">
					<tr class="$EvenOdd">
						<th>Meeting Date</th>
						<th>Meeting Location</th>
					</tr>
					<% control CommitteeMeetings %>
					<tr class="$EvenOdd">
						<td ><% if Notes %><a href="$Link">$Date.Format(F d&#44; Y) $Time (meeting notes)</a><% else %>
							$Date.Format(F d&#44; Y) $Time
							<% end_if %>
						</td>
						<td>$Location</td>
					</tr>
					<% end_control %>
			</table>
			
		<% end_if %>
		
				
	<% end_if %>


	$Form
	</div>
</div>