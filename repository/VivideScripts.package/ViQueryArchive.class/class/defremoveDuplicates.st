definitions
defremoveDuplicates
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#removeDuplicates); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objs | objs asSet asOrderedCollection]'); add: (#mapType->#all); add: (#block->[:objs | objs asSet asOrderedCollection]); yourself)