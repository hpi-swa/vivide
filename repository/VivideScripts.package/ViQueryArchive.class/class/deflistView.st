definitions
deflistView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 5:48:21 pm'); yourself)); add: (#id->#listView); add: (#block->[:query :view :environment | 
	ViListView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment | 
	ViListView createFor: query orUpdate: view in: environment]'); yourself)