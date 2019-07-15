steps
stepf58af729af2a594d87ebc499c1bc536b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'37100942-d8f9-e04a-94f4-200ac05fa1bb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:41:29 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'37100942-d8f9-e04a-94f4-200ac05fa1bb').
(#iconCode -> 'nil').
(#id -> #'f58af729-af2a-594d-87eb-c499c1bc536b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'672be6c0-ae0f-e947-9bfc-eb4abea195b3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:41:29 pm')
}))
})