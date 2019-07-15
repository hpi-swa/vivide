steps
step8f53a4cc854f7843a59c68a80249da1d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph vResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f1443833-1fa6-ac4c-8aee-069282594f6b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph vResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f1443833-1fa6-ac4c-8aee-069282594f6b').
(#iconCode -> 'nil').
(#id -> #'8f53a4cc-854f-7843-a59c-68a80249da1d').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0502fbc6-6bc8-5145-9f5d-4b683a4318ed').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
}))
})