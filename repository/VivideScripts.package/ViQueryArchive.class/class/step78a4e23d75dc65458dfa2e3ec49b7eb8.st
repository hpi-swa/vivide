steps
step78a4e23d75dc65458dfa2e3ec49b7eb8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'10c3c29d-a68e-6841-b00e-1fcf98b5e06d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 June 2014 3:49:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'10c3c29d-a68e-6841-b00e-1fcf98b5e06d').
(#iconCode -> 'nil').
(#id -> #'78a4e23d-75dc-6545-8dfa-2e3ec49b7eb8').
(#isProperty -> false).
(#label -> 'Class metrics (NOM, NOA)').
(#next -> #'524b534f-b2f5-2447-a4d0-9a1769f2d123').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 August 2014 1:18:07 pm').
(#inputKind -> PackageInfo).
(#outputKind -> ClassDescription).
(#priority -> 6740).
(#view -> ViTreeViewExtended)
}))
})