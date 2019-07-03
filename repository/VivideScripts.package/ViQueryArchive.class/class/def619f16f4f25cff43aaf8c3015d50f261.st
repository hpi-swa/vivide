definitions
def619f16f4f25cff43aaf8c3015d50f261
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:compiledMethod | (compiledMethod numArgs = 0 and: [compiledMethod methodClass isMeta])
	ifTrue: [compiledMethod methodClass theNonMetaClass executeMethod: compiledMethod]
	ifFalse: ['-- Could not execute method --'] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'619f16f4-f25c-ff43-aaf8-c3015d50f261').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 May 2019 4:19:23.790459 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:compiledMethod | (compiledMethod numArgs = 0 and: [compiledMethod methodClass isMeta])
	ifTrue: [compiledMethod methodClass theNonMetaClass executeMethod: compiledMethod]
	ifFalse: [''-- Could not execute method --''] ]]
		value: in) do: [:result | out addAll: result asList]]')
})