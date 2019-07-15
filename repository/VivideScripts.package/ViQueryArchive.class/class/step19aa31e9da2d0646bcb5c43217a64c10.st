steps
step19aa31e9da2d0646bcb5c43217a64c10
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'002e2364-d450-4944-a460-20f93f2ada42').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:16:23 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'002e2364-d450-4944-a460-20f93f2ada42').
(#iconCode -> 'nil').
(#id -> #'19aa31e9-da2d-0646-bcb5-c43217a64c10').
(#isProperty -> false).
(#label -> 'Classes by Author').
(#next -> #'7f7cb928-c2c5-c840-8c91-995fa40b1fd5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:16:23 pm').
(#inputKind -> String).
(#outputKind -> Behavior).
(#priority -> 4380).
(#view -> ViTreeViewExtended)
}))
})