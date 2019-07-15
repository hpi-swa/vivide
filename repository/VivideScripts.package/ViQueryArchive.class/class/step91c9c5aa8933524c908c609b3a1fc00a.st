steps
step91c9c5aa8933524c908c609b3a1fc00a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:change | change changes "composition"
	copyWithout: change]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'82903474-b5ff-1948-a93f-1aa9c77d7f4a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 5:22:34 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:change | change changes "composition"
	copyWithout: change]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'82903474-b5ff-1948-a93f-1aa9c77d7f4a').
(#iconCode -> 'nil').
(#id -> #'91c9c5aa-8933-524c-908c-609b3a1fc00a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'e6cb8658-3697-3849-9a2c-fae04d157f52').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 5:22:34 pm').
(#priority -> 6270)
}))
})