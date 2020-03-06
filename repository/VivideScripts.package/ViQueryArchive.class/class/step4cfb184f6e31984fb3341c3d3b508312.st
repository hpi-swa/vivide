steps
step4cfb184f6e31984fb3341c3d3b508312
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:notes | notes sorted: [:a :b | a modified > b modified]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'a4b54915-3e66-7646-9e4c-e995a4f1f211').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:27:54.154371 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:notes | notes sorted: [:a :b | a modified > b modified]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a4b54915-3e66-7646-9e4c-e995a4f1f211').
(#iconCode -> 'nil').
(#id -> #'4cfb184f-6e31-984f-b334-1c3d3b508312').
(#isProperty -> false).
(#label -> nil).
(#next -> #'34b21752-fa54-c045-92bf-b7cbda9259ca').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:27:54.154371 pm')
}))
})