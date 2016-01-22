definitions
def1155c220eeaa5a49849d1aad1424f1f6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:organizers :context | | result |
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
	result]).
(#class -> ViQueryMapDefinition).
(#id -> #'1155c220-eeaa-5a49-849d-1aad1424f1f6').
(#inputKind -> ViQueryOrganizer).
(#mapType -> #all).
(#outputKind -> ViAbstractQueryPart).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:17:21 am')})).
(#sourceCode -> '[:organizers :context | | result |
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
	result]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})