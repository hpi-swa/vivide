definitions
def41e28d6b077d474bb28ae30838864205
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 January 2014 4:32:08 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'41e28d6b-077d-474b-b28a-e30838864205'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]]'); add: (#mapType->#all); add: (#block->[:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]]); yourself)