steps
stepf28761367eb8e94b864d61f883d28db9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:p1 :p2 | (p1 at: #name) asLowercase <= (p2 at: #name) asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1d838e84-c8f6-1549-b787-c8352fea384d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:09:20 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:p1 :p2 | (p1 at: #name) asLowercase <= (p2 at: #name) asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1d838e84-c8f6-1549-b787-c8352fea384d').
(#iconCode -> 'nil').
(#id -> #'f2876136-7eb8-e94b-864d-61f883d28db9').
(#isProperty -> false).
(#label -> nil).
(#next -> #'1f71149b-9a66-7343-a8bc-932007c75e1f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:09:20 pm').
(#priority -> 4100)
}))
})