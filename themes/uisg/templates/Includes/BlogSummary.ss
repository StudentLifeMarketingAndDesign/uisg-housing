<div class="blogSummary">
	<h3 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h3>
	<p class="authorDate">Posted on $Date.Format(F j) <!--| <a href="$Link#PageComments_holder" title="View Comments Posted">$Comments.Count <% _t('COMMENTS', 'Comments') %></a>--></p>
	<% if TagsCollection %>
		<p class="tags">
			Tags:
			<% control TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	$ParagraphSummary
	<p class="blogVitals"><a href="$Link" class="readmore" title="Read Full Post">Read the full post</a></p>
</div>
