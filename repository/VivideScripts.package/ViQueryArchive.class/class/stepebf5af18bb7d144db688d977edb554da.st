steps
stepebf5af18bb7d144db688d977edb554da
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'0b181f5b-81ac-7a4d-9019-3c9d69fd2653').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.105235 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0b181f5b-81ac-7a4d-9019-3c9d69fd2653').
(#iconCode -> 'nil').
(#id -> #'ebf5af18-bb7d-144d-b688-d977edb554da').
(#isProperty -> false).
(#label -> nil).
(#next -> #'c60eec35-75e9-534b-9578-b27a1359065f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.105235 pm')
}))
})