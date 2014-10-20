definitions
deftreeViewExtended
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 September 2013 2:07:07 pm'); yourself)); add: (#id->#treeViewExtended); add: (#block->[:query :view :environment | 
	ViTreeViewExtended createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment | 
	ViTreeViewExtended createFor: query orUpdate: view in: environment]'); yourself)