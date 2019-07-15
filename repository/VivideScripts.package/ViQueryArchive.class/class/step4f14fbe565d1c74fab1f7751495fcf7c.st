steps
step4f14fbe565d1c74fab1f7751495fcf7c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:cls | { #text
		-> (ViLabelService doObject: cls).
	#icon
		-> (ViIconService doObject: cls) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'7356b474-6dca-ab40-a55d-79bc5aaba65e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:12:24 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:cls | { #text
		-> (ViLabelService doObject: cls).
	#icon
		-> (ViIconService doObject: cls) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7356b474-6dca-ab40-a55d-79bc5aaba65e').
(#iconCode -> 'nil').
(#id -> #'4f14fbe5-65d1-c74f-ab1f-7751495fcf7c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'be6764e2-9533-b84e-ad01-796ac5f86383').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:12:24 pm')
}))
})