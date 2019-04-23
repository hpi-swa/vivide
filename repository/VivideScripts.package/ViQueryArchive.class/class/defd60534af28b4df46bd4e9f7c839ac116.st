definitions
defd60534af28b4df46bd4e9f7c839ac116
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#'stack top' -> (object stackPtr > 0 ifTrue: [object top]).
	#'all temp vars' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'d60534af-28b4-df46-bd4e-9f7c839ac116').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:17:57 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#''stack top'' -> (object stackPtr > 0 ifTrue: [object top]).
	#''all temp vars'' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]]
		value: in) do: [:result | out addAll: result asList]]')})