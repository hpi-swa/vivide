steps
stepb510b1f42f4c514abd82a354adbf042f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:step | step organization referencesToStep: step]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5c5fa3a2-8909-8547-a51d-e66d4d143a60').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 September 2013 5:33:06 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:step | step organization referencesToStep: step]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5c5fa3a2-8909-8547-a51d-e66d4d143a60').
(#iconCode -> 'UiFugueIcons arrowStepIcon').
(#id -> #'b510b1f4-2f4c-514a-bd82-a354adbf042f').
(#isProperty -> false).
(#label -> 'References').
(#next -> #'e6902a58-ee3c-7a49-9375-8c1501d23175').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 September 2013 5:33:06 pm').
(#inputKind -> ViScriptStep).
(#outputKind -> ViScriptStep).
(#priority -> 530).
(#view -> ViTreeViewExtended)
}))
})