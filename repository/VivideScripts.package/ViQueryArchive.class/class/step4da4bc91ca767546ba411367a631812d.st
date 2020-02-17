steps
step4da4bc91ca767546ba411367a631812d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cs | cs methodChanges associations]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'f6b353fe-bc80-eb4d-9835-d2bf0c556052').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:56:12 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cs | cs methodChanges associations]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f6b353fe-bc80-eb4d-9835-d2bf0c556052').
(#iconCode -> 'nil').
(#id -> #'4da4bc91-ca76-7546-ba41-1367a631812d').
(#isProperty -> false).
(#label -> 'Change Set').
(#next -> #'c67f9784-9909-ad41-9da5-97b166608217').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> ChangeSet).
(#priority -> 6210).
(#view -> ViTreeViewExtended)
}))
})