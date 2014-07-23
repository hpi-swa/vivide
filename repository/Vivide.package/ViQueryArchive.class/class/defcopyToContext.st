definitions
defcopyToContext
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#copyToContext); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objects :context | context contents: objects. objects]'); add: (#mapType->#all); add: (#block->[:objects :context | context contents: objects. objects]); yourself)