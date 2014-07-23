definitions
def1155c220eeaa5a49849d1aad1424f1f6
	<definition>

	^ ((Dictionary new) add: (#inputKind->ViQueryOrganizer); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 9:17:21 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ViAbstractQueryPart); add: (#id->#'1155c220-eeaa-5a49-849d-1aad1424f1f6'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:organizers :context | | result |
	context contents: organizers.
	result := OrderedCollection new.
	organizers do: [:o |
		o orderedSteps do: [:step |
			(organizers allSatisfy: [:o2 |
				o == o2 or: [(o2 steps keys includes: step id) not]])
					ifTrue: [result add: step]].
		o orderedDefinitions do: [:def |
			(organizers allSatisfy: [:o2 |
				o == o2 or: [(o2 definitions keys includes: def id) not]])
					ifTrue: [result add: def]].		
		].
	result]'); add: (#mapType->#all); add: (#block->[:organizers :context | | result |
	context contents: organizers.
	result := OrderedCollection new.
	organizers do: [:o |
		o orderedSteps do: [:step |
			(organizers allSatisfy: [:o2 |
				o == o2 or: [(o2 steps keys includes: step id) not]])
					ifTrue: [result add: step]].
		o orderedDefinitions do: [:def |
			(organizers allSatisfy: [:o2 |
				o == o2 or: [(o2 definitions keys includes: def id) not]])
					ifTrue: [result add: def]].		
		].
	result]); yourself)