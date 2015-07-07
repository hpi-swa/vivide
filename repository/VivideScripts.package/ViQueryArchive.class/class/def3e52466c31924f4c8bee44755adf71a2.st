definitions
def3e52466c31924f4c8bee44755adf71a2
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 7:00:56 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'3e52466c-3192-4f4c-8bee-44755adf71a2'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]]'); add: (#mapType->#twoArgs); add: (#block->[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]]); yourself)