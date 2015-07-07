definitions
defe56dcef11fe04645b354b85dc88c7cf7
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:08:29 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e56dcef1-1fe0-4645-b354-b85dc88c7cf7'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}]); yourself)