steps
stepd9976b61dc4ebf4aa4a6a44c2728904d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:behaviors | behaviors reject: [:b | behaviors includes: b superclass]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'2e21c0f5-684c-fd4d-b3ef-c9fe7d8174f0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:behaviors | behaviors reject: [:b | behaviors includes: b superclass]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2e21c0f5-684c-fd4d-b3ef-c9fe7d8174f0').
(#iconCode -> 'nil').
(#id -> #'d9976b61-dc4e-bf4a-a4a6-a44c2728904d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'688b9e53-cc30-9341-a368-54f6c47e402c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:08:45 pm').
(#inputKind -> Behavior).
(#outputKind -> Behavior).
(#priority -> 3970)
}))
})