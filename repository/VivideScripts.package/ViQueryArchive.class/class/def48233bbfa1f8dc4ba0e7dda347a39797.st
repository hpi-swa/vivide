definitions
def48233bbfa1f8dc4ba0e7dda347a39797
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:u1 :u2 | (u1 at: #fullName) asLowercase <= (u2 at: #fullName) asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'48233bbf-a1f8-dc4b-a0e7-dda347a39797').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:37:47 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:u1 :u2 | (u1 at: #fullName) asLowercase <= (u2 at: #fullName) asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})