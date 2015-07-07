definitions
defworkspace
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:04:17 pm'); yourself)); add: (#id->#workspace); add: (#block->[:query :view :environment |
	ViWorkspaceView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViWorkspaceView createFor: query orUpdate: view in: environment]'); yourself)