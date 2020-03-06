steps
stepb39849ac4d4fbb4689d3e18b72f52aea
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:comments | comments sorted: [:a :b | a modified > b modified]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'4056cf94-ddda-044f-a38f-2e7d8913b2ca').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:33:18.686371 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:comments | comments sorted: [:a :b | a modified > b modified]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4056cf94-ddda-044f-a38f-2e7d8913b2ca').
(#iconCode -> 'nil').
(#id -> #'b39849ac-4d4f-bb46-89d3-e18b72f52aea').
(#isProperty -> false).
(#label -> nil).
(#next -> #'71595eec-69da-8f45-ac88-b4fcd2b890c3').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:33:18.686371 pm')
}))
})