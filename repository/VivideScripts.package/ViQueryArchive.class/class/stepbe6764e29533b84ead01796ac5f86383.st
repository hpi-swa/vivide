steps
stepbe6764e29533b84ead01796ac5f86383
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:cls | { #text
		-> (ViObjectOriginService doObject: cls) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'e855e1ac-7b53-0348-9757-f5a8f7e54b1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:06:03 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:cls | { #text
		-> (ViObjectOriginService doObject: cls) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e855e1ac-7b53-0348-9757-f5a8f7e54b1d').
(#iconCode -> 'nil').
(#id -> #'be6764e2-9533-b84e-ad01-796ac5f86383').
(#isProperty -> true).
(#label -> nil).
(#next -> #'f7ba224a-8f8e-c147-9bec-928cd5537411').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:06:03 pm')
}))
})