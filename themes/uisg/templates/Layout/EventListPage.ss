
<div id="content"  class="typography">

	<div id="content1">
		<h1>Upcoming Things</h1>
		<div id="events-content">
			
			<% include BreadCrumbs %>
			
			<% if SelectedTag %>
				<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
			<% else_if SelectedDate %>
				<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h3>
			<% end_if %>
			
			<% if BlogPosts %>
				<% control BlogPosts %>
						<% include BlogSummary %>
				<% end_control %>
			<% else %>
				<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
			<% end_if %>
			
			<% include BlogPagination %>
			
		</div>
		<div class="clear"></div>
	</div>
</div>


