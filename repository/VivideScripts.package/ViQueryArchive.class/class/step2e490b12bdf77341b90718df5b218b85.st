steps
step2e490b12bdf77341b90718df5b218b85
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'e7585112-caaf-c545-a535-1552869584d1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e7585112-caaf-c545-a535-1552869584d1').
(#iconCode -> 'nil').
(#id -> #'2e490b12-bdf7-7341-b907-18df5b218b85').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d681c3f1-84e3-ea45-b9b7-505c4216ddc5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:37:49 pm').
(#inputKind -> DirectoryEntryDirectory).
(#outputKind -> FileDirectory).
(#priority -> 480).
(#view -> ViTreeViewExtended)
}))
})