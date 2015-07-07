definitions
defd681b31ef0fa9142933956de9318a643
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 6:15:59 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Boolean); add: (#id->#'d681b31e-f0fa-9142-9339-56de9318a643'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]]'); add: (#mapType->#twoArgs); add: (#block->[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]]); yourself)