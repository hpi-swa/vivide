definitions
def9ff42a6106dedb4f8bdef07db577c02f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'9ff42a61-06de-db4f-8bde-f07db577c02f').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})