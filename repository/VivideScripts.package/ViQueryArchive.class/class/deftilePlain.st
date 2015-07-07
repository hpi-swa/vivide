definitions
deftilePlain
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 July 2014 1:30:45 pm'); yourself)); add: (#id->#tilePlain); add: (#block->[:query :view :environment |
	ViTilePlainView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViTilePlainView createFor: query orUpdate: view in: environment]'); yourself)