steps
step37989d230602ed44ad37440cccc8d6d9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'761d4da3-eb4c-104a-80c8-256368e993f0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 February 2014 4:57:24 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'761d4da3-eb4c-104a-80c8-256368e993f0').
(#iconCode -> 'nil').
(#id -> #'37989d23-0602-ed44-ad37-440cccc8d6d9').
(#isProperty -> false).
(#label -> 'Submorphs').
(#next -> #'9a36a312-8950-9d4e-9c29-7386596f007f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Morph).
(#outputKind -> Morph).
(#priority -> 6010).
(#view -> ViTreeViewExtended)
}))
})