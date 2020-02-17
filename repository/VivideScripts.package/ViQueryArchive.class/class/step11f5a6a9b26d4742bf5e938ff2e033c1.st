steps
step11f5a6a9b26d4742bf5e938ff2e033c1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#'stack top' -> (object stackPtr > 0 ifTrue: [object top]).
	#'all temp vars' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d60534af-28b4-df46-bd4e-9f7c839ac116').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:17:57 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#''stack top'' -> (object stackPtr > 0 ifTrue: [object top]).
	#''all temp vars'' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d60534af-28b4-df46-bd4e-9f7c839ac116').
(#iconCode -> 'nil').
(#id -> #'11f5a6a9-b26d-4742-bf5e-938ff2e033c1').
(#isProperty -> false).
(#label -> 'Context Inspector').
(#next -> #'07d417c7-f871-9c41-873d-4413efec391d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#outputKind -> Association).
(#priority -> 5180).
(#view -> ViTreeViewExtended)
}))
})