steps
steporderedSteps
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'830e6a7e-46cf-8148-b3a4-55733dd90ae1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:26:55 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'830e6a7e-46cf-8148-b3a4-55733dd90ae1').
(#iconCode -> 'UiFugueIcons scriptMediumIcon').
(#id -> #orderedSteps).
(#isProperty -> false).
(#label -> 'Ordered Queries').
(#next -> #'7fd41212-698d-ee43-8d8f-0dc8fb2b9a9e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:26:55 pm').
(#inputKind -> ViScriptOrganizer).
(#outputKind -> ViScriptStep).
(#priority -> 390).
(#view -> ViTreeViewExtended)
}))
})