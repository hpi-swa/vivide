definitions
deftreePlain
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'27 May 2014 2:46:31 pm'); yourself)); add: (#id->#treePlain); add: (#block->[:query :view :environment | 
	ViTreePlainView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment | 
	ViTreePlainView createFor: query orUpdate: view in: environment]'); yourself)