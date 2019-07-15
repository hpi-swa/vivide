steps
step0d7618526cd4fd4e82641ec9396e2865
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:foo | { #text -> (foo class == ViSeparator ifTrue: [' '] ifFalse: [foo category asText addAttribute: (TextColor color: Color gray)])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f05ec723-94c8-1c40-82d5-f606aade5b23').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:29:06 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:foo | { #text -> (foo class == ViSeparator ifTrue: ['' ''] ifFalse: [foo category asText addAttribute: (TextColor color: Color gray)])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f05ec723-94c8-1c40-82d5-f606aade5b23').
(#iconCode -> 'nil').
(#id -> #'0d761852-6cd4-fd4e-8264-1ec9396e2865').
(#isProperty -> true).
(#label -> nil).
(#next -> #'94656720-b261-7643-b66b-32d00c16754b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:29:06 am').
(#inputKind -> #(nil nil))
}))
})