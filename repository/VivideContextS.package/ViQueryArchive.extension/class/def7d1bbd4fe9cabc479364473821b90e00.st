*VivideContextS-definitions
def7d1bbd4fe9cabc479364473821b90e00
	<definition>

	^ ((Dictionary new) add: (#inputKind->ByteSymbol); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'2 June 2014 5:35:13 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->CSPartialMethod); add: (#id->#'7d1bbd4f-e9ca-bc47-9364-473821b90e00'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:layer | Array streamContents: [:methods |
	SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
		m isContextSMethod ifTrue: [
		 methods nextPutAll: (m partialMethods select: [:pm | pm layers includes: layer]).

]]]].'); add: (#mapType->#each); add: (#block->[:layer | Array streamContents: [:methods |
	SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
		m isContextSMethod ifTrue: [
		 methods nextPutAll: (m partialMethods select: [:pm | pm layers includes: layer]).

]]]]); yourself)