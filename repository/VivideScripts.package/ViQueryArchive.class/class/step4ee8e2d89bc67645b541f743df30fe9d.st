steps
step4ee8e2d89bc67645b541f743df30fe9d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 timeStamp >= obj2 timeStamp] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'d06a16b4-0527-554a-bb45-faee57328b27').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 timeStamp >= obj2 timeStamp] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d06a16b4-0527-554a-bb45-faee57328b27').
(#iconCode -> 'nil').
(#id -> #'4ee8e2d8-9bc6-7645-b541-f743df30fe9d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ba683fae-91bb-ed4c-985f-8c12b3504e50').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1570)
}))
})