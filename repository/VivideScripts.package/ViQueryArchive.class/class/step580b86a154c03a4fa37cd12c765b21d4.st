steps
step580b86a154c03a4fa37cd12c765b21d4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'686facbd-ceb9-6742-8b7e-c241f81b553b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:49:40 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'686facbd-ceb9-6742-8b7e-c241f81b553b').
(#iconCode -> 'UiSilkIcons folderIcon').
(#id -> #'580b86a1-54c0-3a4f-a37c-d12c765b21d4').
(#isProperty -> false).
(#label -> 'Folders (recursive)').
(#next -> #'c0319874-c45b-7441-85fe-f6fe2ba7e2a9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> FileDirectory).
(#outputKind -> DirectoryEntry).
(#priority -> 320).
(#view -> ViTreeViewExtended)
}))
})