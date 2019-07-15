steps
stepbda64b7c17f63247be1d13159655ec28
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2e9d7ecd-166f-f244-818a-3c5acf50d859').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2e9d7ecd-166f-f244-818a-3c5acf50d859').
(#iconCode -> 'nil').
(#id -> #'bda64b7c-17f6-3247-be1d-13159655ec28').
(#isProperty -> false).
(#label -> nil).
(#next -> #'2a5bc3f7-fc5f-4d42-bc5d-1a7c79ebf632').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:20:50 pm').
(#inputKind -> DirectoryEntryDirectory).
(#outputKind -> FileDirectory).
(#priority -> 470).
(#view -> ViTreeViewExtended)
}))
})