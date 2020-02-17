steps
stepdebuggerBindings
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:ctxts |
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{'top of stack' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: ['<stack is empty>'])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1c0a54ab-f2e4-7747-a0b9-5b9444e5d0dd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:ctxts |
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{''top of stack'' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: [''<stack is empty>''])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1c0a54ab-f2e4-7747-a0b9-5b9444e5d0dd').
(#iconCode -> 'UiFugueIcons blockIcon').
(#id -> #debuggerBindings).
(#isProperty -> false).
(#label -> 'Bindings').
(#next -> #'89162c9a-8847-4744-abdb-1031a61c2898').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 430).
(#view -> ViTreeViewExtended)
}))
})