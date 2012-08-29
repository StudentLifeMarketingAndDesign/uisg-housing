
<div id="content"  class="typography">

	<div id="content1">
			<div id="blog-content">
			<% if SelectedTag %>
			<h1>Topic: <span style="text-transform: capitalize">$SelectedTag</span></h1>
			<% else_if SelectedDate %>
				<h1><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h1>
			<% else %>
			<h1>Latest Rental Topics</h1>
			<% end_if %>
			<% include BreadCrumbs %>
		
			<% if SelectedDate %>
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


