steps
stepe746a613ae44894a94a1f23d4ce7da40
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5315c45d-25f8-f247-ab3b-dad6a2c522d7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5315c45d-25f8-f247-ab3b-dad6a2c522d7').
(#iconCode -> 'nil').
(#id -> #'e746a613-ae44-894a-94a1-f23d4ce7da40').
(#isProperty -> false).
(#label -> nil).
(#next -> #'de02f056-5927-3144-a71d-76088dd47944').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm').
(#inputKind -> DirectoryEntryDirectory).
(#outputKind -> FileDirectory).
(#priority -> 490).
(#view -> ViTreeViewExtended)
}))
})