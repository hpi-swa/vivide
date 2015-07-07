definitions
defselectByContext
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#selectByContext); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objects :context | objects select: [:obj | context contents includes: obj]]'); add: (#mapType->#all); add: (#block->[:objects :context | objects select: [:obj | context contents includes: obj]]); yourself)