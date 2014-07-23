definitions
defe4f148b7a110f34da934f46bec7ee57e
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:57:43 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e4f148b7-a110-f34d-a934-f46bec7ee57e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callSelf to: value]
		ifFalse: [line key hasCategory: #callSelf]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callSelf to: value]
		ifFalse: [line key hasCategory: #callSelf]]}]); yourself)