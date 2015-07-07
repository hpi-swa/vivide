definitions
def5ac85d371b76e741892a74402b5cc58e
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:08:14 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'5ac85d37-1b76-e741-892a-74402b5cc58e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}]); yourself)