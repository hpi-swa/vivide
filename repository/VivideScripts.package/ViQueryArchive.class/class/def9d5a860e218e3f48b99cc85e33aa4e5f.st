definitions
def9d5a860e218e3f48b99cc85e33aa4e5f
	<definition>

	^ ((Dictionary new) add: (#inputKind->Behavior); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 February 2014 9:45:27 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Behavior); add: (#id->#'9d5a860e-218e-3f48-b99c-c85e33aa4e5f'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objects | objects select: [:obj | 
	obj isBehavior not or: [(objects includes: obj superclass) not]]]'); add: (#mapType->#all); add: (#block->[:objects | objects select: [:obj | 
	obj isBehavior not or: [(objects includes: obj superclass) not]]]); yourself)