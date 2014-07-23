definitions
def4f4a5855cc447948bb200381aae59f41
	<definition>

	^ ((Dictionary new) add: (#inputKind->ContextPart); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'4f4a5855-cc44-7948-bb20-0381aae59f41'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:ctxts :context |
	context contents: ctxts.
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{''top of stack'' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: [''<stack is empty>''])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]]'); add: (#mapType->#all); add: (#block->[:ctxts :context |
	context contents: ctxts.
	ctxts gather: [:ctxt | 
		{#self -> ctxt receiver},
		{'top of stack' -> (ctxt size > 0
			ifTrue: [ctxt at: ctxt stackPtr]
			ifFalse: ['<stack is empty>'])},
		(ctxt tempNames withIndexCollect: [:nm :idx |
			nm -> (ctxt namedTempAt: idx)])]]); yourself)