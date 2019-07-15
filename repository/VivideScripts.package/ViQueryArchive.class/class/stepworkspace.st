steps
stepworkspace
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2564f7ee-3d4f-8c4a-bee8-3965a3002ceb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2564f7ee-3d4f-8c4a-bee8-3965a3002ceb').
(#iconCode -> 'ViIcons icons8Console64px1Icon').
(#id -> #workspace).
(#isProperty -> false).
(#label -> 'Workspace').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm').
(#isGlobal -> true).
(#priority -> 500).
(#view -> ViWorkspaceView)
}))
})