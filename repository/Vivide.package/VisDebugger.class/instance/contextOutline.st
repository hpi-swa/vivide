as yet unclassified
contextOutline

	^ {
	{#contextOutline. self squeakListViewCreator} -> {
		[:object |
			"ContextVariableInspector >> fieldList, selection"
			{#thisContext -> object.
			#'stack top' -> (object stackPtr > 0 ifTrue: [object top]).
			#'all temp vars' -> object tempsAndValues},
			(object tempNames withIndexCollect: [:nm :idx |
				nm -> (object debuggerMap namedTempAt: idx in: object)])]
			-> {ContextPart.Association}.
		[:binding | #text -> binding key] -> {Association.Object}
	}
	}