steps
stepce6fede41334d84b81765e5a33fd162f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name asLowercase <= obj2 name asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'e32d19a7-1850-b948-98f9-ab78e9051b1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name asLowercase <= obj2 name asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e32d19a7-1850-b948-98f9-ab78e9051b1d').
(#iconCode -> 'nil').
(#id -> #'ce6fede4-1334-d84b-8176-5e5a33fd162f').
(#isProperty -> false).
(#label -> nil).
(#next -> #'0547837e-8ef9-cd4b-827d-5574ea1e1c91').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 2180).
(#view -> ViTreeViewExtended)
}))
})