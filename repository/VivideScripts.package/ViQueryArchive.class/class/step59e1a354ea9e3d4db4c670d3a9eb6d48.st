steps
step59e1a354ea9e3d4db4c670d3a9eb6d48
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | 
	(ViMethodVersion versionsOfMethod: obj1 methodReference) size >= 
	(ViMethodVersion versionsOfMethod: obj2 methodReference) size] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'78df7842-51b1-0d4c-b2cd-d2119d87ca9c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | 
	(ViMethodVersion versionsOfMethod: obj1 methodReference) size >= 
	(ViMethodVersion versionsOfMethod: obj2 methodReference) size] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'78df7842-51b1-0d4c-b2cd-d2119d87ca9c').
(#iconCode -> 'nil').
(#id -> #'59e1a354-ea9e-3d4d-b4c6-70d3a9eb6d48').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d65616b9-310e-3c4d-88d4-b82f6ff8c6f5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 3100)
}))
})