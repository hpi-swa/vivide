definitions
def9ff42a6106dedb4f8bdef07db577c02f
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'9ff42a61-06de-db4f-8bde-f07db577c02f'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objects :context | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]].'); add: (#mapType->#all); add: (#block->[:objects :context | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]]); yourself)