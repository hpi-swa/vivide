definitions
defaa89602fa4cc7841a21ceaf6f17bee2a
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 January 2014 4:40:37 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'aa89602f-a4cc-7841-a21c-eaf6f17bee2a'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:o | o third withAllSuperclasses in: [:c |
	c size > 2
		ifTrue: [c atLast: 3]
		ifFalse: [
			o third subclasses
				ifNotEmpty: [o third]
				ifEmpty: [c atLast: 2 "Object"]]]]'); add: (#mapType->#each); add: (#block->[:o | o third withAllSuperclasses in: [:c |
	c size > 2
		ifTrue: [c atLast: 3]
		ifFalse: [
			o third subclasses
				ifNotEmpty: [o third]
				ifEmpty: [c atLast: 2 "Object"]]]]); yourself)