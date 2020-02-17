steps
step43770565281690488e6e7364ba7aab35
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'48233bbf-a1f8-dc4b-a0e7-dda347a39797').
(#iconCode -> 'nil').
(#id -> #'43770565-2816-9048-8e6e-7364ba7aab35').
(#isProperty -> false).
(#label -> nil).
(#next -> #'94eb9234-d52f-0e4a-81c1-de2c4191893e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:37:47 pm').
(#priority -> 4080)
}))
})