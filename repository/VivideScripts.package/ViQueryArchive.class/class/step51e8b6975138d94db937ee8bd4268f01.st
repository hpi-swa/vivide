steps
step51e8b6975138d94db937ee8bd4268f01
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9e4728d4-8b7a-534a-bc57-4b8fb4453d86').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 May 2019 4:41:08.054459 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9e4728d4-8b7a-534a-bc57-4b8fb4453d86').
(#iconCode -> 'nil').
(#id -> #'51e8b697-5138-d94d-b937-ee8bd4268f01').
(#isProperty -> false).
(#label -> nil).
(#next -> #'7950e293-a009-a34d-80e6-5dbbb6ca46d5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 May 2019 4:41:08.054459 pm').
(#inputKind -> MethodReference).
(#priority -> 250)
}))
})