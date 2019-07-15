steps
step6cd4db5cd2de844892b74f3c52589cf8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1c1144c6-2cce-c947-aec9-7b48023da265').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:26:25 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1c1144c6-2cce-c947-aec9-7b48023da265').
(#iconCode -> 'nil').
(#id -> #'6cd4db5c-d2de-8448-92b7-4f3c52589cf8').
(#isProperty -> false).
(#label -> 'Count Instance Variables').
(#next -> #'61afd65e-d943-5642-bd31-15492112b6ad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> SystemNavigation).
(#priority -> 4670).
(#view -> ViTreeViewExtended)
}))
})