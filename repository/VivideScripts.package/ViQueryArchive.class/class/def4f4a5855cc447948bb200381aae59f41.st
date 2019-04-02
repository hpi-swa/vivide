definitions
def4f4a5855cc447948bb200381aae59f41
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ctxts |
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{'top of stack' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: ['<stack is empty>'])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]]).
(#class -> ViQueryMapDefinition).
(#id -> #'4f4a5855-cc44-7948-bb20-0381aae59f41').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ctxts |
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{''top of stack'' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: [''<stack is empty>''])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})