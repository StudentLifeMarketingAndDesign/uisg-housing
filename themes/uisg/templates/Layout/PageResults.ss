TEST

<% if SearchResults %> 
   <div class="searchresults"> 
   <% control SearchResults %> 
      <div> 
         <h5>$Title</h5> 
         <p>$Content.Summary</p> 
         <a class="readMoreLink right" href="$Link" title="$Title">Read more</a> 
         <div class="clear"></div>    
      </div> 
   <% end_control %> 
   </div> 
<% else %> 
<p>No results found</p> 
<% end_if %>