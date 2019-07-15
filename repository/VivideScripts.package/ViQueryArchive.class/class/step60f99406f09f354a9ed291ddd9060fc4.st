steps
step60f99406f09f354a9ed291ddd9060fc4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c70fcef0-cd7e-cc48-9735-4721bc04f148').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 2:56:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | ((method literals collect: [:symbol | symbol isVariableBinding
	ifTrue: [symbol key]
	ifFalse: [symbol isSymbol ifTrue: [symbol] ifFalse: [nil]]]) collect: [:s | Smalltalk at: s ifAbsent: []])
	reject: [:o | o isNil or: [o isBehavior not]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c70fcef0-cd7e-cc48-9735-4721bc04f148').
(#iconCode -> 'nil').
(#id -> #'60f99406-f09f-354a-9ed2-91ddd9060fc4').
(#isProperty -> false).
(#label -> nil).
(#next -> #'cafd96b4-6e9f-904c-bb72-8015ce0d112f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 2:56:58 pm').
(#priority -> 4700)
}))
})