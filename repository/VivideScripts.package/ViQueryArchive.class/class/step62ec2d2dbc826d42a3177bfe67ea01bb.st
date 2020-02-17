steps
step62ec2d2dbc826d42a3177bfe67ea01bb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0e2e5b9d-afd2-5d49-85be-318056915ba5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:13:03 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0e2e5b9d-afd2-5d49-85be-318056915ba5').
(#iconCode -> 'nil').
(#id -> #'62ec2d2d-bc82-6d42-a317-7bfe67ea01bb').
(#isProperty -> false).
(#label -> 'Load Picture').
(#next -> #'ee936399-1409-634c-81ff-0389658bb3ce').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> DirectoryEntryFile).
(#priority -> 780).
(#view -> ViTreeViewExtended)
}))
})