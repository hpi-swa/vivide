definitions
def78df784251b10d4cb2cdd2119d87ca9c
	<definition>

	^ (Dictionary newFrom: {
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
})