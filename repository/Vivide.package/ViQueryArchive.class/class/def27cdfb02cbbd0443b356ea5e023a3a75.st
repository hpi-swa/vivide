definitions
def27cdfb02cbbd0443b356ea5e023a3a75
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 February 2014 8:52:10 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'27cdfb02-cbbd-0443-b356-ea5e023a3a75'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tag | #uiSetup in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]'); add: (#mapType->#each); add: (#block->[:tag | #uiSetup in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]); yourself)