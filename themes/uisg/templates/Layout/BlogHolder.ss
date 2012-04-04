
<div id="content"  class="typography">

	<div id="content1">
	
	<% if SelectedTag = event %><h1>Events Calendar</h1><% else %><h1>News</h1><% end_if %>
		<div id="blog-content">
			
			<% include BreadCrumbs %>
		
			<% if SelectedDate %>
				<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h3>
			<% end_if %>
			
			<% if BlogEntries %>
				<% control BlogEntries %>
						<% include BlogSummary %>
				<% end_control %>
			<% else %>
				<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
			<% end_if %>
			
			<% include BlogPagination %>
			
		</div>
		<% include BlogSideBar %>
		<div class="clear"></div>
	</div>
</div>


