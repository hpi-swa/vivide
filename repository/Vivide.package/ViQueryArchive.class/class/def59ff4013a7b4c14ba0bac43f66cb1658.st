definitions
def59ff4013a7b4c14ba0bac43f66cb1658
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 February 2014 8:53:15 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'59ff4013-a7b4-c14b-a0ba-c43f66cb1658'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tag | #modelWrite in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]'); add: (#mapType->#each); add: (#block->[:tag | #modelWrite in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]); yourself)