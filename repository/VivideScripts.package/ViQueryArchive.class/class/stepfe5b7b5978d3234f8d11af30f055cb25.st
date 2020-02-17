steps
stepfe5b7b5978d3234f8d11af30f055cb25
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object class == ViSeparator
				ifFalse: [object className]). #selectable -> (object class ~~ ViSeparator)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'cf64c797-5d5d-374c-be9f-e7ad32f5dd70').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 November 2019 10:32:20.308893 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object class == ViSeparator
				ifFalse: [object className]). #selectable -> (object class ~~ ViSeparator)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'cf64c797-5d5d-374c-be9f-e7ad32f5dd70').
(#iconCode -> 'nil').
(#id -> #'fe5b7b59-78d3-234f-8d11-af30f055cb25').
(#isProperty -> true).
(#label -> nil).
(#next -> #'1ac24179-7371-f14b-94c6-92dc340bb85e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 November 2019 10:32:20.308893 am')
}))
})