definitions
deffd572dfd7602ae44b123a3d198f338b0
	<definition>

	^ ((Dictionary new) add: (#inputKind->ViAbstractQueryPart); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 September 2013 12:04:52 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->String); add: (#id->#'fd572dfd-7602-ae44-b123-a3d198f338b0'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:part | part isQueryStep ifTrue: [''Steps''] ifFalse: [''Definitions'']]'); add: (#mapType->#each); add: (#block->[:part | part isQueryStep ifTrue: ['Steps'] ifFalse: ['Definitions']]); yourself)