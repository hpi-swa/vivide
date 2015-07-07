definitions
def8f1f4f52b29d394694c0c84409867443
	<definition>

	^ ((Dictionary new) add: (#inputKind->String); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 3:50:08 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->MethodReference); add: (#id->#'8f1f4f52-b29d-3946-94c0-c84409867443'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:author | Array streamContents: [:strm | SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
	(m timeStamp beginsWith: author) ifTrue: [strm nextPut: m methodReference]]]]'); add: (#mapType->#each); add: (#block->[:author | Array streamContents: [:strm | SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
	(m timeStamp beginsWith: author) ifTrue: [strm nextPut: m methodReference]]]]); yourself)