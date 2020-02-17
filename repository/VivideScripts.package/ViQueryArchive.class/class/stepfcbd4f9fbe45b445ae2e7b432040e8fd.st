steps
stepfcbd4f9fbe45b445ae2e7b432040e8fd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'fdc64c2e-e431-d24d-a8da-ff219e7e9b9d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:59:01 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fdc64c2e-e431-d24d-a8da-ff219e7e9b9d').
(#iconCode -> 'UiSilkIcons pageWhiteTextWidthIcon').
(#id -> #'fcbd4f9f-be45-b445-ae2e-7b432040e8fd').
(#isProperty -> false).
(#label -> 'Load Text File').
(#next -> #'b0443283-7194-df4e-bcb6-2dc3d3395f1b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> DirectoryEntryFile).
(#outputKind -> Text).
(#priority -> 720).
(#view -> ViTreeViewExtended)
}))
})