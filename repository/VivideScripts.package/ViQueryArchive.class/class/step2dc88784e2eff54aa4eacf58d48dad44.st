steps
step2dc88784e2eff54aa4eacf58d48dad44
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:view | (view isKindOf: ViMultiPaneWidget) ifTrue: [view panes] ifFalse: [#()] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'07ea567a-2267-524e-a29d-64b1bfbbe3e4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:43:12 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:view | (view isKindOf: ViMultiPaneWidget) ifTrue: [view panes] ifFalse: [#()] ]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'07ea567a-2267-524e-a29d-64b1bfbbe3e4').
(#iconCode -> 'nil').
(#id -> #'2dc88784-e2ef-f54a-a4ea-cf58d48dad44').
(#isProperty -> false).
(#label -> nil).
(#next -> #'11525e3e-ab65-9643-be1d-444ca45f2674').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:43:12 pm')
}))
})