steps
stepeb55b2aeb8c0504395aba2f9497d4956
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0a99bf89-fc80-d44d-83e9-2d70789cf056').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:20:18 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0a99bf89-fc80-d44d-83e9-2d70789cf056').
(#iconCode -> 'UiSilkIcons pencilIcon').
(#id -> #'eb55b2ae-b8c0-5043-95ab-a2f9497d4956').
(#isProperty -> false).
(#label -> 'Source code').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:20:18 am').
(#inputKind -> ClassDescription).
(#priority -> 300).
(#view -> ViClassDefinitionEditorView)
}))
})