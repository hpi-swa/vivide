definitions
defdac0f8b12ad86c42992607278d236bb0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:ref1 :ref2 | ref1 selector < ref2 selector
	or: [ref1 selector = ref2 selector
		and: [ref1 classSymbol <= ref2 classSymbol]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'dac0f8b1-2ad8-6c42-9926-07278d236bb0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:ref1 :ref2 | ref1 selector < ref2 selector
	or: [ref1 selector = ref2 selector
		and: [ref1 classSymbol <= ref2 classSymbol]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})