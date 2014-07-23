definitions
def8a26523baf6cb44cb3015574cb83e74f
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 February 2014 3:45:20 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'8a26523b-af6c-b44c-b301-5574cb83e74f'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tag | #modelRead in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]'); add: (#mapType->#each); add: (#block->[:tag | #modelRead in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]); yourself)