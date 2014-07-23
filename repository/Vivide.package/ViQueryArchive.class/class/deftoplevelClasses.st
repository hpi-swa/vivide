definitions
deftoplevelClasses
	<definition>

	^ ((Dictionary new) add: (#inputKind->Behavior); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Behavior); add: (#id->#toplevelClasses); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:behaviors | behaviors reject: [:b | behaviors includes: b superclass]]'); add: (#mapType->#all); add: (#block->[:behaviors | behaviors reject: [:b | behaviors includes: b superclass]]); yourself)