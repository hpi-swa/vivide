steps
step46b904bc22e5a84a8f30894b0f7df352
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:binding | binding value]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'429a2320-d9e4-3f49-9521-491b2d32758c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:45 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:binding | binding value]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'429a2320-d9e4-3f49-9521-491b2d32758c').
(#iconCode -> 'nil').
(#id -> #'46b904bc-22e5-a84a-8f30-894b0f7df352').
(#isProperty -> false).
(#label -> nil).
(#next -> #'2b022238-c9a7-fe4b-8d2b-fa5c2250af5d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:45 am').
(#priority -> 5510)
}))
})