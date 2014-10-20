definitions
deftreeView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#id->#treeView); add: (#block->[:query :view :environment |
	ViTreeView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViTreeView createFor: query orUpdate: view in: environment]'); yourself)