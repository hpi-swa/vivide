definitions
defe92838ffd429e24782ccde08a1a7afff
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding ifTrue: ['** scripts **'] ifFalse: [object category].
	object
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'e92838ff-d429-e247-82cc-de08a1a7afff').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:44:10 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding ifTrue: [''** scripts **''] ifFalse: [object category].
	object
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})