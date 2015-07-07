definitions
defbuttonBar
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 June 2014 10:01:30 am'); yourself)); add: (#id->#buttonBar); add: (#block->[:query :view :env |
	ViButtonBarView createFor: query orUpdate: view in: env]); add: (#sourceCode->'[:query :view :env |
	ViButtonBarView createFor: query orUpdate: view in: env]'); yourself)