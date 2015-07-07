definitions
defed772df8b7825f49aca7191fdb5a5fce
	<definition>

	^ ((Dictionary new) add: (#inputKind->MethodContext); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 10:17:57 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Association); add: (#id->#'ed772df8-b782-5f49-aca7-191fdb5a5fce'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#''stack top'' -> (object stackPtr > 0 ifTrue: [object top]).
	#''all temp vars'' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]'); add: (#mapType->#each); add: (#block->[:object |
	"ContextVariableInspector >> fieldList, selection"
	{#thisContext -> object.
	#'stack top' -> (object stackPtr > 0 ifTrue: [object top]).
	#'all temp vars' -> object tempsAndValues},
	(object tempNames withIndexCollect: [:nm :idx |
		nm -> (object debuggerMap namedTempAt: idx in: object)])]); yourself)