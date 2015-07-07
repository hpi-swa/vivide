definitions
deftextBox
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 June 2014 10:17:40 am'); yourself)); add: (#id->#textBox); add: (#block->[:query :view :environment |
	ViTextEdit createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViTextEdit createFor: query orUpdate: view in: environment]'); yourself)