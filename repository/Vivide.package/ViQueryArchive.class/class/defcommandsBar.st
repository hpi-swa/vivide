definitions
defcommandsBar
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 June 2014 8:59:04 am'); yourself)); add: (#id->#commandsBar); add: (#block->[:query :view :environment |
	ViCommandsView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViCommandsView createFor: query orUpdate: view in: environment]'); yourself)