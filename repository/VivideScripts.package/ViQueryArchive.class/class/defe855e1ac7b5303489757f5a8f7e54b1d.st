definitions
defe855e1ac7b5303489757f5a8f7e54b1d
	<definition>

	^ (Dictionary newFrom: {
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
})