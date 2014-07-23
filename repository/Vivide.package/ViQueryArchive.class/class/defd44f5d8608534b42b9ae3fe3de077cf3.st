definitions
defd44f5d8608534b42b9ae3fe3de077cf3
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:44:15 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d44f5d86-0853-4b42-b9ae-3fe3de077cf3'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callModel to: value]
		ifFalse: [line key hasCategory: #callModel]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callModel to: value]
		ifFalse: [line key hasCategory: #callModel]]}]); yourself)