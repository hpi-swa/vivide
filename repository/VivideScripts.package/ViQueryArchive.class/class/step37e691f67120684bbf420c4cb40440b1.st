steps
step37e691f67120684bbf420c4cb40440b1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4847dd58-68b2-864d-94ae-889117f97643').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4847dd58-68b2-864d-94ae-889117f97643').
(#iconCode -> 'nil').
(#id -> #'37e691f6-7120-684b-bf42-0c4cb40440b1').
(#isProperty -> false).
(#label -> 'Vocabulary').
(#next -> #'ba4b7a9c-c7c9-5145-a45e-2cdf2b0a3940').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am').
(#inputKind -> Object).
(#priority -> 500).
(#view -> ViTreeView)
}))
})