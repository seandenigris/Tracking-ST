accessing
htmlLink
	| template |
	template := '<a href="{url}"  
 target="_blank">
        {number}
</a>'.
	^ template format: { 
			#url -> self url.
			#number -> self number } asDictionary