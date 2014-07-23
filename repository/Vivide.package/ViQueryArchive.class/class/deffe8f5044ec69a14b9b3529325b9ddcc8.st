definitions
deffe8f5044ec69a14b9b3529325b9ddcc8
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 June 2014 4:59:33 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'fe8f5044-ec69-a14b-9b35-29325b9ddcc8'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]'); add: (#mapType->#each); add: (#block->[:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]); yourself)