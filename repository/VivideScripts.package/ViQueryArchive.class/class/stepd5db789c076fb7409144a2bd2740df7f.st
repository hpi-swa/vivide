steps
stepd5db789c076fb7409144a2bd2740df7f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:o1 :o2 | o1 value selector <= o2 value selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'bfc68b2c-3616-7946-82ec-a8d68d677b72').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 6:27:55 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:o1 :o2 | o1 value selector <= o2 value selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bfc68b2c-3616-7946-82ec-a8d68d677b72').
(#iconCode -> 'nil').
(#id -> #'d5db789c-076f-b740-9144-a2bd2740df7f').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ff9ce8ad-7d0d-4744-afba-f53a7a933bd9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 6:27:55 pm').
(#priority -> 5760)
}))
})