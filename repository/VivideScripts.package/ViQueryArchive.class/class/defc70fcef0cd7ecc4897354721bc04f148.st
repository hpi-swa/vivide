definitions
defc70fcef0cd7ecc4897354721bc04f148
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c70fcef0-cd7e-cc48-9735-4721bc04f148').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 2:56:58 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]]
		value: in) do: [:result | out addAll: result asList]]')})