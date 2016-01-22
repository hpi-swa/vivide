definitions
def5f9c4c4267c8c44c99bcc4bbff0a8363
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | obj isVariableBinding
	ifTrue: ['variables']
	ifFalse: [obj isBehavior
		ifTrue: ['classes']
		ifFalse: ['methods']]]).
(#class -> ViQueryMapDefinition).
(#id -> #'5f9c4c42-67c8-c44c-99bc-c4bbff0a8363').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:58:12 pm')})).
(#sourceCode -> '[:obj | obj isVariableBinding
	ifTrue: [''variables'']
	ifFalse: [obj isBehavior
		ifTrue: [''classes'']
		ifFalse: [''methods'']]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})