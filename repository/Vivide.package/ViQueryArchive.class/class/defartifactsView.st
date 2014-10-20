definitions
defartifactsView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 February 2014 1:49:37 pm'); yourself)); add: (#id->#artifactsView); add: (#block->[:query :view :environment |
	ViArtifactListView2 createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViArtifactListView2 createFor: query orUpdate: view in: environment]'); yourself)