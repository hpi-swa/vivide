steps
step96d9ab1f38366b4c9f56ee9989b7d3a8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'88ac3db0-9d21-a644-9e26-06dff094ecb8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'88ac3db0-9d21-a644-9e26-06dff094ecb8').
(#iconCode -> 'nil').
(#id -> #'96d9ab1f-3836-6b4c-9f56-ee9989b7d3a8').
(#isProperty -> false).
(#label -> nil).
(#next -> #'83cf7197-6cf5-554e-b535-2b2ebf2fb60e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#outputKind -> CompiledMethod).
(#priority -> 5810).
(#view -> ViTreeViewExtended)
}))
})