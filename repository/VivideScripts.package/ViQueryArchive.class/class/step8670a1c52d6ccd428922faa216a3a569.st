steps
step8670a1c52d6ccd428922faa216a3a569
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:methods | methods sorted: [:a :b | a selector <= b selector]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'ba8bc1b3-fcd6-2442-8932-c19ddb7fb2cf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:28:32.161572 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:methods | methods sorted: [:a :b | a selector <= b selector]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ba8bc1b3-fcd6-2442-8932-c19ddb7fb2cf').
(#iconCode -> 'nil').
(#id -> #'8670a1c5-2d6c-cd42-8922-faa216a3a569').
(#isProperty -> false).
(#label -> nil).
(#next -> #'7009a1e1-6236-a246-8a97-918e63b9fc4a').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:28:32.161572 pm')
}))
})