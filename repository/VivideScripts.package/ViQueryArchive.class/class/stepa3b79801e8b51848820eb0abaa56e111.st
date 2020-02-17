steps
stepa3b79801e8b51848820eb0abaa56e111
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method methodClass]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'358a8cd7-384c-fd42-9666-5553c6b4170b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:48:47 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method methodClass]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'358a8cd7-384c-fd42-9666-5553c6b4170b').
(#iconCode -> 'nil').
(#id -> #'a3b79801-e8b5-1848-820e-b0abaa56e111').
(#isProperty -> false).
(#label -> 'Browse method''s class').
(#next -> #'0a45fa5f-6f7b-a74b-b15f-868dcf6a9799').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:48:47 am').
(#inputKind -> CompiledMethod).
(#priority -> 1000)
}))
})