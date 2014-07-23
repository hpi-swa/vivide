definitions
def3d5826639321174b908a2c2ac999a24a
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:09:25 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'3d582663-9321-174b-908a-2c2ac999a24a'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}]); yourself)