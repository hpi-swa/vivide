steps
step7951779362590c4d852f1225f668aba2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | pkg systemCategories]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7b1e07cc-d282-7741-8f3b-6ebc163b105c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 September 2013 4:54:16 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | pkg systemCategories]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7b1e07cc-d282-7741-8f3b-6ebc163b105c').
(#iconCode -> 'nil').
(#id -> #'79517793-6259-0c4d-852f-1225f668aba2').
(#isProperty -> false).
(#label -> nil).
(#next -> #'00d6ab88-02b8-d343-98bf-44d2fb8c6ab5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#priority -> 4070).
(#view -> ViTreeViewExtended)
}))
})