<div id="content"  class="typography">

	<div id="content1">
	
	

		<div id="BlogContent" class="typography">
			<div id="breadcrumbs"><% include BreadCrumbs %></div>
			
			<div class="blogEntry">
				<h2 class="postTitle">$Title</h2>
				<p class="authorDate"> Posted on $Date.Format(F j) </p>
				<% if TagsCollection %>
					<p class="tags">
						 <% _t('TAGS', 'Tags:') %> 
						<% control TagsCollection %>
							<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
						<% end_control %>
					</p>
				<% end_if %>
		       
				<% if IsWYSIWYGEnabled %>
					$Content
				<% else %>
					$ParsedContent
				<% end_if %>
				<br />
			</div>
			
			<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
			
			<% if TrackBacksEnabled %>
				<% include TrackBacks %>
			<% end_if %>
		
		</div>
<!-- end content1 -->

<!--<% include BlogSideBar %>-->
</div>

</div>
