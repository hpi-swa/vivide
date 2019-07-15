steps
stepd70d563fbdd718429175cf758450e227
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'90617371-0b50-8444-a853-96023a9105ba').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:49:40 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'90617371-0b50-8444-a853-96023a9105ba').
(#iconCode -> 'UiSilkIcons folderIcon').
(#id -> #'d70d563f-bdd7-1842-9175-cf758450e227').
(#isProperty -> false).
(#label -> 'Files & Folders').
(#next -> #'6094f78a-9d34-d844-8e98-bc414b414eb2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> FileDirectory).
(#outputKind -> DirectoryEntry).
(#priority -> 330).
(#view -> ViTreeViewExtended)
}))
})