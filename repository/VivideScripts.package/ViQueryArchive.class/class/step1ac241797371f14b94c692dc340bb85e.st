steps
step1ac241797371f14b94c692dc340bb85e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object class == ViSeparator
				ifFalse: [object category]). #selectable -> (object class ~~ ViSeparator)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'66591385-aea1-a34d-b9af-1d1208beaf0c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 November 2019 10:32:20.312893 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object class == ViSeparator
				ifFalse: [object category]). #selectable -> (object class ~~ ViSeparator)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'66591385-aea1-a34d-b9af-1d1208beaf0c').
(#iconCode -> 'nil').
(#id -> #'1ac24179-7371-f14b-94c6-92dc340bb85e').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 November 2019 10:32:20.312893 am')
}))
})