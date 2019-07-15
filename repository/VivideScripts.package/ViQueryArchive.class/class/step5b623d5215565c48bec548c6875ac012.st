steps
step5b623d5215565c48bec548c6875ac012
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'18829793-c08f-e54e-a54d-56060970c1ac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'18829793-c08f-e54e-a54d-56060970c1ac').
(#iconCode -> 'nil').
(#id -> #'5b623d52-1556-5c48-bec5-48c6875ac012').
(#isProperty -> false).
(#label -> nil).
(#next -> #'e2aeb51f-931d-4e43-a8d9-a68001d03b29').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#outputKind -> CompiledMethod).
(#priority -> 5900).
(#view -> ViTreeViewExtended)
}))
})