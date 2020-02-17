steps
step11b9014af6fa1a408446f63ddf69232f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b9ea6a9f-63d1-7d4e-a7e2-74493c799d30').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:48:45 pm')
})).
(#sourceCode -> '[:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b9ea6a9f-63d1-7d4e-a7e2-74493c799d30').
(#iconCode -> 'nil').
(#id -> #'11b9014a-f6fa-1a40-8446-f63ddf69232f').
(#isProperty -> false).
(#label -> 'Processes').
(#next -> #'71efc7d9-c3cb-7246-9652-6b74bc022b8e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#isGlobal -> true).
(#priority -> 6160).
(#view -> ViTreeViewExtended)
}))
})