definitions
def5f9c4c4267c8c44c99bcc4bbff0a8363
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 6:58:12 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'5f9c4c42-67c8-c44c-99bc-c4bbff0a8363'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | obj isVariableBinding
	ifTrue: [''variables'']
	ifFalse: [obj isBehavior
		ifTrue: [''classes'']
		ifFalse: [''methods'']]]'); add: (#mapType->#each); add: (#block->[:obj | obj isVariableBinding
	ifTrue: ['variables']
	ifFalse: [obj isBehavior
		ifTrue: ['classes']
		ifFalse: ['methods']]]); yourself)