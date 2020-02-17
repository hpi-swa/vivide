steps
stepdefaultProperties
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text -> object printString] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'83fdd12e-c8ff-d04c-aca7-8a67eac8a477').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '30 December 2014 5:04:25 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text -> object printString] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'83fdd12e-c8ff-d04c-aca7-8a67eac8a477').
(#iconCode -> 'nil').
(#id -> #defaultProperties).
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '30 December 2014 5:04:25 pm')
}))
})