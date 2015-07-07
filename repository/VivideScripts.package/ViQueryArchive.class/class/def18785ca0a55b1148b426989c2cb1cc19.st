definitions
def18785ca0a55b1148b426989c2cb1cc19
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:56:38 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'18785ca0-a55b-1148-b426-989c2cb1cc19'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #check to: value]
		ifFalse: [line key hasCategory: #check]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #check to: value]
		ifFalse: [line key hasCategory: #check]]}]); yourself)