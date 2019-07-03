definitions
defce43fc0e5e438649b12f662c9ac7d2a7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples asGroups ] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'ce43fc0e-5e43-8649-b12f-662c9ac7d2a7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples asGroups ] value: in)]')
})