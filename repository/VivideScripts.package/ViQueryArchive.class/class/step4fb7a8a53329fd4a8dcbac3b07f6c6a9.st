steps
step4fb7a8a53329fd4a8dcbac3b07f6c6a9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedDefinitions]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4f03e8b9-0386-0f42-90f9-b17a09d3f17c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:11 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedDefinitions]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4f03e8b9-0386-0f42-90f9-b17a09d3f17c').
(#iconCode -> 'nil').
(#id -> #'4fb7a8a5-3329-fd4a-8dcb-ac3b07f6c6a9').
(#isProperty -> false).
(#label -> nil).
(#next -> #'65524c28-e06a-0e4b-85de-f973d5fa91df').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:46 pm').
(#inputKind -> ViScriptOrganizer).
(#outputKind -> ViScriptDefinition).
(#priority -> 400).
(#view -> ViTreeViewExtended)
}))
})