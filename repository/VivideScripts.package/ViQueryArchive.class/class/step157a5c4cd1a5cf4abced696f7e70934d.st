steps
step157a5c4cd1a5cf4abced696f7e70934d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | pkg mcPackage]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5426a091-f7c0-7144-9fa4-0e95573f4f65').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 4:34:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | pkg mcPackage]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5426a091-f7c0-7144-9fa4-0e95573f4f65').
(#iconCode -> 'nil').
(#id -> #'157a5c4c-d1a5-cf4a-bced-696f7e70934d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'fb20347b-7a6f-be43-bd78-88492dc2d4b1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 4:34:58 pm').
(#inputKind -> PackageInfo).
(#outputKind -> MCPackage).
(#priority -> 3710).
(#view -> ViTreeViewExtended)
}))
})