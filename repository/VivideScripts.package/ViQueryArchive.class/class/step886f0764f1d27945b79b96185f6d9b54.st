steps
step886f0764f1d27945b79b96185f6d9b54
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bcdad9d0-06af-ee4c-ae13-f79215b3d5d5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 9:44:59 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bcdad9d0-06af-ee4c-ae13-f79215b3d5d5').
(#iconCode -> 'nil').
(#id -> #'886f0764-f1d2-7945-b79b-96185f6d9b54').
(#isProperty -> false).
(#label -> nil).
(#next -> #'4011a5c2-e1de-ed48-85b3-ef688751c3b8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 9:44:59 am').
(#inputKind -> MethodReference).
(#priority -> 200)
}))
})