definitions
defobjectEditor
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'25 August 2014 11:08:49 am'); yourself)); add: (#id->#objectEditor); add: (#block->[:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]'); yourself)