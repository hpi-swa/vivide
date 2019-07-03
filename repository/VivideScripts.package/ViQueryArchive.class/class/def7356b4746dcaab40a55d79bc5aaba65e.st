definitions
def7356b4746dcaab40a55d79bc5aaba65e
	<definition>

	^ (Dictionary newFrom: {
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
})