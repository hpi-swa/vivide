steps
step00d6ab8802b8d34398bf44d2fb8c6ab5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cat | (SystemOrganization listAtCategoryNamed: cat)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'ac6e9f73-6e72-1c4e-9d3a-bbea9406b9aa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:28:44 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cat | (SystemOrganization listAtCategoryNamed: cat)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ac6e9f73-6e72-1c4e-9d3a-bbea9406b9aa').
(#iconCode -> 'UiFugueIcons folderTreeIcon').
(#id -> #'00d6ab88-02b8-d343-98bf-44d2fb8c6ab5').
(#isProperty -> false).
(#label -> 'Class Category (Eclipse)').
(#next -> #'5f25d26e-227f-9b45-abc1-644d5e129639').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:28:44 pm').
(#inputKind -> String).
(#outputKind -> ClassDescription).
(#priority -> 3690).
(#view -> ViTreeViewExtended)
}))
})