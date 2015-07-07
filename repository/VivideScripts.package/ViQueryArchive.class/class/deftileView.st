definitions
deftileView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#id->#tileView); add: (#block->[:query :view :environment |
	ViTileView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViTileView createFor: query orUpdate: view in: environment]'); yourself)