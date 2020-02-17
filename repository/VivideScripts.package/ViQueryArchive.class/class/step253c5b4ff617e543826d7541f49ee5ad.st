steps
step253c5b4ff617e543826d7541f49ee5ad
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'8bf85c73-c930-1a42-9e15-479662eb0db4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:17:25.188572 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8bf85c73-c930-1a42-9e15-479662eb0db4').
(#iconCode -> 'nil').
(#id -> #'253c5b4f-f617-e543-826d-7541f49ee5ad').
(#isProperty -> false).
(#label -> 'References to Classes').
(#next -> #'8670a1c5-2d6c-cd42-8922-faa216a3a569').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:17:25.188572 pm').
(#inputKind -> ClassDescription).
(#priority -> 290).
(#view -> ViTreeViewExtended)
}))
})