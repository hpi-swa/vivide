steps
step9d1dec9fcad6de45b2c203c8cd59b8d7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
(#className -> #ViScriptDefinition).
(#id -> #'3737fbff-7efa-5142-92d3-0742a28234c7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:17:21 am')
})).
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
	result] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3737fbff-7efa-5142-92d3-0742a28234c7').
(#iconCode -> 'nil').
(#id -> #'9d1dec9f-cad6-de45-b2c2-03c8cd59b8d7').
(#isProperty -> false).
(#label -> 'Diff').
(#next -> #'64c67351-149a-5b41-9de2-aa23b19628a8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ViScriptOrganizer).
(#outputKind -> ViScriptObject).
(#priority -> 3610).
(#view -> ViTreeViewExtended)
}))
})