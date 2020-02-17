steps
step34d74f0397696140afa3e3b7a3f2cd59
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object asStringOrText]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'714534c0-32b8-8444-af6f-b7e2f4be6913').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:56:04 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object asStringOrText]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'714534c0-32b8-8444-af6f-b7e2f4be6913').
(#iconCode -> 'UiFugueIcons uiTextFieldIcon').
(#id -> #'34d74f03-9769-6140-afa3-e3b7a3f2cd59').
(#isProperty -> false).
(#label -> 'Input field').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:56:04 am').
(#help -> 'Type something...').
(#priority -> 5000).
(#view -> ViLineEdit)
}))
})