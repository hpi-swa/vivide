steps
step7950e293a009a34d80e65dbbb6ca46d5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'619f16f4-f25c-ff43-aaf8-c3015d50f261').
(#iconCode -> 'UiSilkIcons cogIcon').
(#id -> #'7950e293-a009-a34d-80e6-5dbbb6ca46d5').
(#isProperty -> false).
(#label -> 'Execute Method (!)').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 May 2019 4:19:23.790459 pm').
(#inputKind -> CompiledMethod).
(#priority -> 250)
}))
})