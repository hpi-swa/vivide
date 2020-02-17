steps
step78d3db6d6a90614d88f9eed2f96f9d05
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'f559eda9-e909-3c40-8666-c1fa71a4c3e5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f559eda9-e909-3c40-8666-c1fa71a4c3e5').
(#iconCode -> 'nil').
(#id -> #'78d3db6d-6a90-614d-88f9-eed2f96f9d05').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ac1f8319-046c-e04d-b22a-43df31b7abef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2530)
}))
})