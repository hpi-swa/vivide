definitions
def6f88a5a4246a344ea4853b15cb6fa9ea
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'6f88a5a4-246a-344e-a485-3b15cb6fa9ea').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 2:56:58 pm')})).
(#sourceCode -> '[:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})