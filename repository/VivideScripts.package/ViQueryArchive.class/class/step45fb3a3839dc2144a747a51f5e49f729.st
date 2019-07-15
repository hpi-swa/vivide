steps
step45fb3a3839dc2144a747a51f5e49f729
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:part1 :part2 | part1 isScript ifTrue: [true] ifFalse: [
	"Ignore concrete temp names."
	part1 block decompile decompileString <= part2 block decompile decompileString]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'d0c702ef-1b75-e64a-ad14-203f1076b0f1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 10:17:33 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:part1 :part2 | part1 isScript ifTrue: [true] ifFalse: [
	"Ignore concrete temp names."
	part1 block decompile decompileString <= part2 block decompile decompileString]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d0c702ef-1b75-e64a-ad14-203f1076b0f1').
(#iconCode -> 'nil').
(#id -> #'45fb3a38-39dc-2144-a747-a51f5e49f729').
(#isProperty -> false).
(#label -> nil).
(#next -> #'23d4adf1-41b2-9845-aeb2-2b496e4ea663').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 10:17:33 am').
(#priority -> 3660)
}))
})