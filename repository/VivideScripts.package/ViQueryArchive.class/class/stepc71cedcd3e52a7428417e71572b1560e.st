steps
stepc71cedcd3e52a7428417e71572b1560e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0d908938-002b-1e45-b366-1a5c6e671880').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0d908938-002b-1e45-b366-1a5c6e671880').
(#iconCode -> 'nil').
(#id -> #'c71cedcd-3e52-a742-8417-e71572b1560e').
(#isProperty -> false).
(#label -> nil).
(#next -> #'4b41a6b7-f1e4-b84a-b82e-8aded82e35a8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')
}))
})