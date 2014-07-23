*VivideContextS-definitions
def0faa06ddc790a246845d72d83fdfb683
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 May 2014 2:32:56 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'0faa06dd-c790-a246-845d-72d83fdfb683'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:frames | | internals |
	internals := false.
	frames select: [:frame |
		internals := internals or: [frame receiver isKindOf: CSPartialMethod].
		frame method methodClass = CSMethodObject
			ifTrue: [internals := false].
		internals not and: [frame method methodClass ~= CSMethodObject]
		]]'); add: (#mapType->#all); add: (#block->[:frames | | internals |
	internals := false.
	frames select: [:frame |
		internals := internals or: [frame receiver isKindOf: CSPartialMethod].
		frame method methodClass = CSMethodObject
			ifTrue: [internals := false].
		internals not and: [frame method methodClass ~= CSMethodObject]
		]]); yourself)