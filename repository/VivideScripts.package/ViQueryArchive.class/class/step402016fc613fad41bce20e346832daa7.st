steps
step402016fc613fad41bce20e346832daa7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:association | { #icon -> association key. #balloonText -> association value asString }]
		value: o), { #object -> o key }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'805a451e-ae28-d249-be22-1a4c2e1a0ccc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 December 2017 9:57:19 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:association | { #icon -> association key. #balloonText -> association value asString }]
		value: o), { #object -> o key }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'805a451e-ae28-d249-be22-1a4c2e1a0ccc').
(#iconCode -> 'nil').
(#id -> #'402016fc-613f-ad41-bce2-0e346832daa7').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 December 2017 9:57:19 am')
}))
})