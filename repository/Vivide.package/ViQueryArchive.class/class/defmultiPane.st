definitions
defmultiPane
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 January 2014 5:08:04 pm'); yourself)); add: (#id->#multiPane); add: (#block->[:query :view :environment | "DEPRECATED."
	ViMultiPaneView new]); add: (#sourceCode->'[:query :view :environment | "DEPRECATED."
	ViMultiPaneView new]'); yourself)