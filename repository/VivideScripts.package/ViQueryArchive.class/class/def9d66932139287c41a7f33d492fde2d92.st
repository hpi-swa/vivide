definitions
def9d66932139287c41a7f33d492fde2d92
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:hit1 :hit2 | (hit1 at: '@score') asInteger >= (hit2 at: '@score') asInteger] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'9d669321-3928-7c41-a7f3-3d492fde2d92').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:01:22 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:hit1 :hit2 | (hit1 at: ''@score'') asInteger >= (hit2 at: ''@score'') asInteger] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})