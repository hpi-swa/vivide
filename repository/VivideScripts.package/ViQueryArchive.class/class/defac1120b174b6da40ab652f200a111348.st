definitions
defac1120b174b6da40ab652f200a111348
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:07:34 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'ac1120b1-74b6-da40-ab65-2f200a111348'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveInteractive to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveInteractive]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveInteractive to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveInteractive]]}]); yourself)