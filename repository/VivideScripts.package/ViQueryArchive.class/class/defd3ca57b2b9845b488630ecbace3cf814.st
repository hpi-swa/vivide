definitions
defd3ca57b2b9845b488630ecbace3cf814
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:association | 
	{ #text -> association value.
	#value -> association key }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'d3ca57b2-b984-5b48-8630-ecbace3cf814').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2018 10:33:33 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:association | 
	{ #text -> association value.
	#value -> association key }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})