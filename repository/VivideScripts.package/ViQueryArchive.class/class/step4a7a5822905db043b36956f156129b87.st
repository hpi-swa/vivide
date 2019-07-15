steps
step4a7a5822905db043b36956f156129b87
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c37e89e8-8db6-4d44-85d0-ccaefc64a618').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:02:31 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c37e89e8-8db6-4d44-85d0-ccaefc64a618').
(#iconCode -> 'nil').
(#id -> #'4a7a5822-905d-b043-b369-56f156129b87').
(#isProperty -> false).
(#label -> nil).
(#next -> #'78cd1987-8352-584e-9b6b-7582a5be6451').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:02:31 am').
(#inputKind -> MethodReference).
(#priority -> 300).
(#view -> ViMethodEditorView)
}))
})