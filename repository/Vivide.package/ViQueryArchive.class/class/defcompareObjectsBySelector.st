definitions
defcompareObjectsBySelector
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Boolean); add: (#id->#compareObjectsBySelector); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj1 :obj2 | obj1 selector <= obj2 selector]'); add: (#mapType->#twoArgs); add: (#block->[:obj1 :obj2 | obj1 selector <= obj2 selector]); yourself)