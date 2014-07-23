definitions
deff5fcb65ace619f41be89945ee8be0d1b
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Boolean); add: (#id->#'f5fcb65a-ce61-9f41-be89-945ee8be0d1b'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:o1 :o2 | ((o1 isKindOf: MethodReference) and: [o2 isKindOf: MethodReference])
	ifTrue: [o1 selector <= o2 selector]
	ifFalse: [o1 asString <= o2 asString]]'); add: (#mapType->#twoArgs); add: (#block->[:o1 :o2 | ((o1 isKindOf: MethodReference) and: [o2 isKindOf: MethodReference])
	ifTrue: [o1 selector <= o2 selector]
	ifFalse: [o1 asString <= o2 asString]]); yourself)