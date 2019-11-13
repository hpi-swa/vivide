steps
step66f64b278ccb0549a3879ab332d35ab1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples sorted: [:a :b | a first <= b first]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'a1e6d3b9-05e4-514b-a3d5-a95b56d15a85').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 10:15:48.618728 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples sorted: [:a :b | a first <= b first]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a1e6d3b9-05e4-514b-a3d5-a95b56d15a85').
(#iconCode -> 'nil').
(#id -> #'66f64b27-8ccb-0549-a387-9ab332d35ab1').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6d824fb8-a397-1a46-8c72-8c6635b89819').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 10:15:48.618728 am')
}))
})