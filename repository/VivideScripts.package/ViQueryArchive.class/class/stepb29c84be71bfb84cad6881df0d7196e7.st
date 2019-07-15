steps
stepb29c84be71bfb84cad6881df0d7196e7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'70283200-b2d3-d743-9d8a-392461112f21').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:25:03 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'70283200-b2d3-d743-9d8a-392461112f21').
(#iconCode -> 'nil').
(#id -> #'b29c84be-71bf-b84c-ad68-81df0d7196e7').
(#isProperty -> false).
(#label -> nil).
(#next -> #'b81e14ce-2c55-114e-a729-a2cb482e4b71').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:25:03 am').
(#inputKind -> MethodReference).
(#priority -> 200)
}))
})