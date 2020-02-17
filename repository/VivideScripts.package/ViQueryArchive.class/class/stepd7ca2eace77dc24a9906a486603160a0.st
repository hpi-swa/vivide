steps
stepd7ca2eace77dc24a9906a486603160a0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:node | 
{ #text
		-> (node isMessage
				ifTrue: [node selector]).
	#icon
		-> (node isMessage
				ifTrue: [UiDiagonaIcons icon0127Small]
				ifFalse: [node isReturn
						ifTrue: [UiDiagonaIcons icon0316Small]
						ifFalse: [ViIcons blankIcon]]) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'28d8d922-627d-b84c-bbd1-0c95cf39f776').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:node | 
{ #text
		-> (node isMessage
				ifTrue: [node selector]).
	#icon
		-> (node isMessage
				ifTrue: [UiDiagonaIcons icon0127Small]
				ifFalse: [node isReturn
						ifTrue: [UiDiagonaIcons icon0316Small]
						ifFalse: [ViIcons blankIcon]]) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'28d8d922-627d-b84c-bbd1-0c95cf39f776').
(#iconCode -> 'nil').
(#id -> #'d7ca2eac-e77d-c24a-9906-a486603160a0').
(#isProperty -> true).
(#label -> nil).
(#next -> #'fea2b084-266a-3849-818c-699ce7e7042e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')
}))
})