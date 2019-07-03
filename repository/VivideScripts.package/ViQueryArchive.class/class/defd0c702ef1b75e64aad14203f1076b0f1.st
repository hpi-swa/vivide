definitions
defd0c702ef1b75e64aad14203f1076b0f1
	<definition>

	^ (Dictionary newFrom: {
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
})