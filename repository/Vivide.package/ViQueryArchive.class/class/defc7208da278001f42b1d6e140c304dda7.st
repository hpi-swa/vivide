definitions
defc7208da278001f42b1d6e140c304dda7
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:04:38 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'c7208da2-7800-1f42-b1d6-e140c304dda7'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveConstant to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveConstant]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveConstant to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveConstant]]}]); yourself)