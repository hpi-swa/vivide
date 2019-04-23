definitions
def1c0a54abf2e47747a0b95b9444e5d0dd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:ctxts |
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{'top of stack' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: ['<stack is empty>'])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'1c0a54ab-f2e4-7747-a0b9-5b9444e5d0dd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:ctxts |
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{''top of stack'' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: [''<stack is empty>''])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]] value: in)]')})