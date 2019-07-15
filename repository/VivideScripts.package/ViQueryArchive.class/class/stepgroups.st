steps
stepgroups
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples
		sorted: [:t1 :t2 | t1 second asString <= t2 second asString]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5d21216a-0b20-9e46-9336-4320f1403995').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 April 2019 3:12:48.396594 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples
		sorted: [:t1 :t2 | t1 second asString <= t2 second asString]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5d21216a-0b20-9e46-9336-4320f1403995').
(#iconCode -> 'nil').
(#id -> #groups).
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#groupsMinimal #defaultPropertiesExtended)).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 April 2019 3:12:48.396594 pm').
(#inputKind -> #(nil nil)).
(#view -> ViTreeView)
}))
})