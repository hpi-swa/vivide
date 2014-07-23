definitions
def50041bc7921ec24fbe8c5cf9144c4040
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 February 2014 9:39:56 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'50041bc7-921e-c24f-be8c-5cf9144c4040'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tag | #spawnTool in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]'); add: (#mapType->#each); add: (#block->[:tag | #spawnTool in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}]]); yourself)