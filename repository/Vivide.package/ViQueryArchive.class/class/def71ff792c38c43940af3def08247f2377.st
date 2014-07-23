definitions
def71ff792c38c43940af3def08247f2377
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'71ff792c-38c4-3940-af3d-ef08247f2377'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:op | #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [def fullTimeStamp printRelativeTimeStamp]
		ifFalse: [''-'']])]'); add: (#mapType->#each); add: (#block->[:op | #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [def fullTimeStamp printRelativeTimeStamp]
		ifFalse: ['-']])]); yourself)