steps
stepgroupsUnsorted
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'c9ef82bd-db12-d446-a43f-558a04f98be2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c9ef82bd-db12-d446-a43f-558a04f98be2').
(#iconCode -> 'nil').
(#id -> #groupsUnsorted).
(#isProperty -> false).
(#label -> nil).
(#next -> #'e91a4f52-5c39-4c4c-b5c5-1311bacd5025').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am').
(#inputKind -> {Object. Object}).
(#view -> ViTreeViewExtended)
}))
})