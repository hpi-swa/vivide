steps
step71ddcad37128514caaa79edb1e6953b8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | 
	((Smalltalk at: #MethodTags ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [Set new]) -> method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'74d6323e-625f-ab4f-8593-da781d60d7fc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 3:41:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | 
	((Smalltalk at: #MethodTags ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [Set new]) -> method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'74d6323e-625f-ab4f-8593-da781d60d7fc').
(#iconCode -> 'nil').
(#id -> #'71ddcad3-7128-514c-aaa7-9edb1e6953b8').
(#isProperty -> false).
(#label -> 'Method tags').
(#next -> #'d5db789c-076f-b740-9144-a2bd2740df7f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> CompiledMethod).
(#outputKind -> Association).
(#priority -> 5750).
(#view -> ViTreeViewExtended)
}))
})