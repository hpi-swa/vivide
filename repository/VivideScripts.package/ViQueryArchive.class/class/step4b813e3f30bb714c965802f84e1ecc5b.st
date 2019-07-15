steps
step4b813e3f30bb714c965802f84e1ecc5b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1906928d-0e72-ee4c-aa59-71eacf8eb7b3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:00:56 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1906928d-0e72-ee4c-aa59-71eacf8eb7b3').
(#iconCode -> 'nil').
(#id -> #'4b813e3f-30bb-714c-9658-02f84e1ecc5b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d2ab7b32-7b9e-ba48-808c-ab0e89480da4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:00:56 pm').
(#priority -> 3790)
}))
})