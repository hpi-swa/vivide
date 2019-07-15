steps
step28be63168868744c9db70ec219020611
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'81c77a15-661d-1e48-9e81-85f7bdd732e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 9:09:07 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'81c77a15-661d-1e48-9e81-85f7bdd732e2').
(#iconCode -> 'nil').
(#id -> #'28be6316-8868-744c-9db7-0ec219020611').
(#isProperty -> false).
(#label -> 'Transcript').
(#next -> #'cfe6ad6f-ad06-774f-b19c-5dc3bea7243e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 9:09:07 am').
(#inputKind -> ViTranscriptHistory).
(#priority -> 50).
(#view -> ViTreeViewExtended)
}))
})