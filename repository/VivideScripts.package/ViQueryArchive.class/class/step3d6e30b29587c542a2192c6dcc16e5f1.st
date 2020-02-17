steps
step3d6e30b29587c542a2192c6dcc16e5f1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:superClass :thisClass :instVarName | {
			(thisClass withAllSuperclasses reversed indexOf: superClass) asString, ') ', superClass name.
			thisClass -> instVarName} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'a7aba676-f57f-2448-b69e-3283d44ce403').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:18:47 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:superClass :thisClass :instVarName | {
			(thisClass withAllSuperclasses reversed indexOf: superClass) asString, '') '', superClass name.
			thisClass -> instVarName} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a7aba676-f57f-2448-b69e-3283d44ce403').
(#iconCode -> 'nil').
(#id -> #'3d6e30b2-9587-c542-a219-2c6dcc16e5f1').
(#isProperty -> false).
(#label -> nil).
(#next -> #'c7876b21-782a-4944-88e1-399e5e82d6b5').
(#properties -> (Dictionary newFrom: {
(#after -> #(#groups)).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:18:47 am').
(#inputKind -> #(nil nil nil))
}))
})