definitions
deftextInput
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 May 2014 5:31:37 pm'); yourself)); add: (#id->#textInput); add: (#block->[:query :view :environment |
	ViLineEdit createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViLineEdit createFor: query orUpdate: view in: environment]'); yourself)