definitions
defexplorer
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 July 2014 9:19:28 am'); yourself)); add: (#id->#explorer); add: (#block->[:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViExplorerView createFor: query orUpdate: view in: environment]'); yourself)