steps
step757cd24a516ebf45ad50d29635e9bbee
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:steps | steps sorted: [:s1 :s2 | s1 id <= s2 id]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'7ad6ee07-9677-ce46-adbd-8cb5503e46a9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:45:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:steps | steps sorted: [:s1 :s2 | s1 id <= s2 id]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7ad6ee07-9677-ce46-adbd-8cb5503e46a9').
(#iconCode -> 'nil').
(#id -> #'757cd24a-516e-bf45-ad50-d29635e9bbee').
(#isProperty -> false).
(#label -> nil).
(#next -> #'dc8af77b-cb54-d74d-a9c2-fbd92c4b2a44').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:45:39 pm').
(#priority -> 6680)
}))
})