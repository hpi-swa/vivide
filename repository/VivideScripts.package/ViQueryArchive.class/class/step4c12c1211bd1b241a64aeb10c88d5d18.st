steps
step4c12c1211bd1b241a64aeb10c88d5d18
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:version | {version package. version} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'190741ae-2caf-d141-892b-f478763653ed').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:14:00.058086 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:version | {version package. version} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'190741ae-2caf-d141-892b-f478763653ed').
(#iconCode -> 'nil').
(#id -> #'4c12c121-1bd1-b241-a64a-eb10c88d5d18').
(#isProperty -> false).
(#label -> 'Versions by Package (Monticello)').
(#next -> #'522c3151-28b4-9e49-ab9b-469da3243562').
(#properties -> (Dictionary newFrom: {
(#after -> #()).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:14:00.058086 am').
(#inputKind -> MCVersion).
(#view -> ViTreeViewExtended)
}))
})