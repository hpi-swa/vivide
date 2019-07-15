steps
stepa34edfe9887173439abcb10f76365684
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:def | def organization referencesToDefinition: def]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2443c585-98be-8048-8a9a-537005b3d798').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 12:03:08 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:def | def organization referencesToDefinition: def]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2443c585-98be-8048-8a9a-537005b3d798').
(#iconCode -> 'UiFugueIcons arrowStepIcon').
(#id -> #'a34edfe9-8871-7343-9abc-b10f76365684').
(#isProperty -> false).
(#label -> 'References').
(#next -> #'47ebfeaf-f6ff-624a-8fc6-078f452527db').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 11:55:52 am').
(#inputKind -> ViScriptDefinition).
(#outputKind -> ViScriptObject).
(#priority -> 520).
(#view -> ViTreeViewExtended)
}))
})