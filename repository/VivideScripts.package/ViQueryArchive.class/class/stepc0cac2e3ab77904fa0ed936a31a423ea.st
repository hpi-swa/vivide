steps
stepc0cac2e3ab77904fa0ed936a31a423ea
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:definitions | definitions select: [:def | def isSnippetDefinition]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'c8b3a260-a50f-524a-9f5a-bafe2de5115d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:08:06 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:definitions | definitions select: [:def | def isSnippetDefinition]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c8b3a260-a50f-524a-9f5a-bafe2de5115d').
(#iconCode -> 'nil').
(#id -> #'c0cac2e3-ab77-904f-a0ed-936a31a423ea').
(#isProperty -> false).
(#label -> 'Snippet Definitions').
(#next -> #'4bab6171-1c6c-504b-98ae-553b38d3d886').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:31 pm').
(#inputKind -> ViScriptDefinition).
(#outputKind -> ViQuerySnippetDefinition).
(#priority -> 4880).
(#view -> ViTreeViewExtended)
}))
})