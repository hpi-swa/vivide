steps
step44f56402c21ba04c8d76cecb592b4509
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'d3ca57b2-b984-5b48-8630-ecbace3cf814').
(#iconCode -> 'nil').
(#id -> #'44f56402-c21b-a04c-8d76-cecb592b4509').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2018 10:33:33 am')
}))
})