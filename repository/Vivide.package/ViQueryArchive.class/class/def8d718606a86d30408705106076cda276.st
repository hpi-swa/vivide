definitions
def8d718606a86d30408705106076cda276
	<definition>

	^ ((Dictionary new) add: (#inputKind->Association); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 1:34:36 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->TestCase); add: (#id->#'8d718606-a86d-3040-8705-106076cda276'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:assoc | assoc value asArray sorted: [:t1 :t2 |
	t1 class == t2 class
		ifTrue: [t1 selector <= t2 selector]
		ifFalse: [t1 class name <= t2 class name]]]'); add: (#mapType->#each); add: (#block->[:assoc | assoc value asArray sorted: [:t1 :t2 |
	t1 class == t2 class
		ifTrue: [t1 selector <= t2 selector]
		ifFalse: [t1 class name <= t2 class name]]]); yourself)