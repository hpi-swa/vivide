steps
step3c2b7af6fa287b46be3e136289f6c835
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:archive | archive allBoxes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'445851cd-b032-1e40-9678-b975c7d6054f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 8:53:32 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:archive | archive allBoxes]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'445851cd-b032-1e40-9678-b975c7d6054f').
(#iconCode -> 'nil').
(#id -> #'3c2b7af6-fa28-7b46-be3e-136289f6c835').
(#isProperty -> false).
(#label -> 'Mail Archive').
(#next -> #'fae58224-4829-944b-ac11-ce72e6570614').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 8:53:32 am')
}))
})