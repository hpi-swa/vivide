steps
step71595eec69da8f45ac88b4fcd2b890c3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:exComment | { #text -> exComment serialNumber }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6c154847-3a22-1144-ba6d-8dd6f4b148cb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:33:33.092371 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:exComment | { #text -> exComment serialNumber }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6c154847-3a22-1144-ba6d-8dd6f4b148cb').
(#iconCode -> 'nil').
(#id -> #'71595eec-69da-8f45-ac88-b4fcd2b890c3').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#defaultPropertiesExtended)).
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:33:33.092371 pm')
}))
})