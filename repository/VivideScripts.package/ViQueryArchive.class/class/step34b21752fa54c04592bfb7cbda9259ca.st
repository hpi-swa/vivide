steps
step34b21752fa54c04592bfb7cbda9259ca
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:exNote | { #text -> exNote serialNumber }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f56cfc2e-9390-ba4c-ad6a-661f13598f73').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:28:19.336371 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:exNote | { #text -> exNote serialNumber }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f56cfc2e-9390-ba4c-ad6a-661f13598f73').
(#iconCode -> 'nil').
(#id -> #'34b21752-fa54-c045-92bf-b7cbda9259ca').
(#isProperty -> true).
(#label -> nil).
(#next -> #'12c8f944-6154-604a-b57f-6af32a469773').
(#properties -> (Dictionary newFrom: {
(#after -> #()).
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:28:19.336371 pm')
}))
})