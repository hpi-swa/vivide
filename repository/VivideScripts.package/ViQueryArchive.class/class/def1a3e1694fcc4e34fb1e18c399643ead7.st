definitions
def1a3e1694fcc4e34fb1e18c399643ead7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 compiledMethod linesOfCode
	>= obj2 compiledMethod linesOfCode] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'1a3e1694-fcc4-e34f-b1e1-8c399643ead7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 compiledMethod linesOfCode
	>= obj2 compiledMethod linesOfCode] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})