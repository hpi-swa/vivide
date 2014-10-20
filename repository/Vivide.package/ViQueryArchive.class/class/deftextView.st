definitions
deftextView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 4:09:38 pm'); yourself)); add: (#id->#textView); add: (#block->[:query :view :environment | 
	ViTextView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment | 
	ViTextView createFor: query orUpdate: view in: environment]'); yourself)