steps
step2efaf9924ab5ff4f8321b9aecefce974
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects reversed]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'40e78a88-9b34-c04a-aa74-b54afb8c0eb3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:51:28 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects reversed]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'40e78a88-9b34-c04a-aa74-b54afb8c0eb3').
(#iconCode -> 'nil').
(#id -> #'2efaf992-4ab5-ff4f-8321-b9aecefce974').
(#isProperty -> false).
(#label -> 'Last exceptions').
(#next -> #'931fac93-b85b-1c42-bcc2-435f7486a3e6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ViExceptionHistory).
(#priority -> 30).
(#view -> ViTreeViewExtended)
}))
})