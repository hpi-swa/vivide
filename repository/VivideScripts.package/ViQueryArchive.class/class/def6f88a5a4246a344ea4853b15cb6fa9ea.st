definitions
def6f88a5a4246a344ea4853b15cb6fa9ea
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'17 January 2014 2:56:58 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'6f88a5a4-246a-344e-a485-3b15cb6fa9ea'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]'); add: (#mapType->#each); add: (#block->[:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]); yourself)