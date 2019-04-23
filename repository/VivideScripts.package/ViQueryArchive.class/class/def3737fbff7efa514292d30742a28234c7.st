definitions
def3737fbff7efa514292d30742a28234c7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:organizers | | result |
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
	result] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'3737fbff-7efa-5142-92d3-0742a28234c7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:17:21 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:organizers | | result |
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
	result] value: in)]')})