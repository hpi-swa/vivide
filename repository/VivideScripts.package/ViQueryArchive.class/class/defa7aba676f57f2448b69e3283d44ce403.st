definitions
defa7aba676f57f2448b69e3283d44ce403
	<definition>

	^ (Dictionary newFrom: {
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
})