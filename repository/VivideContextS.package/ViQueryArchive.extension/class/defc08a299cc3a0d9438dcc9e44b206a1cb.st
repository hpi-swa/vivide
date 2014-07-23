*VivideContextS-definitions
defc08a299cc3a0d9438dcc9e44b206a1cb
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'24 May 2014 6:10:02 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'c08a299c-c3a0-d943-8dcc-9e44b206a1cb'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:methods | | connected |
	connected := true.
	(methods select: [:pm | connected in: [:old |
		connected := connected and: [pm method literalStrings anySatisfy: [:literal | literal asString startsWith: #proceed]].
		old]])]'); add: (#mapType->#all); add: (#block->[:methods | | connected |
	connected := true.
	(methods select: [:pm | connected in: [:old |
		connected := connected and: [pm method literalStrings anySatisfy: [:literal | literal asString startsWith: #proceed]].
		old]])]); yourself)