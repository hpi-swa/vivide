steps
stepgroupsMinimal
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples asGroups] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1aa18191-d968-b347-aad8-96e6fc1ecd3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.101235 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples asGroups] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1aa18191-d968-b347-aad8-96e6fc1ecd3d').
(#iconCode -> 'nil').
(#id -> #groupsMinimal).
(#isProperty -> false).
(#label -> nil).
(#next -> #'ebf5af18-bb7d-144d-b688-d977edb554da').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.101235 pm').
(#inputKind -> #(nil nil)).
(#view -> ViTreeView)
}))
})