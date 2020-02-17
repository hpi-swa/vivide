steps
stepb3b8787175165049b09272ad966f3216
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:orga | orga orderedSteps select: [:step | step isSpecial]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'06f98eeb-a401-204f-b4af-9c40942ce7b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:43:44 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:orga | orga orderedSteps select: [:step | step isSpecial]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'06f98eeb-a401-204f-b4af-9c40942ce7b0').
(#iconCode -> 'nil').
(#id -> #'b3b87871-7516-5049-b092-72ad966f3216').
(#isProperty -> false).
(#label -> 'Special Scripts').
(#next -> #'757cd24a-516e-bf45-ad50-d29635e9bbee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> ViScriptOrganizer).
(#outputKind -> ViScriptStep).
(#priority -> 300).
(#view -> ViTreeViewExtended)
}))
})