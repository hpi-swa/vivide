steps
step03d5937adad89045beb6aaa920fd056c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'6193438d-0e22-5c46-a765-cb2af86318ba').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6193438d-0e22-5c46-a765-cb2af86318ba').
(#iconCode -> 'nil').
(#id -> #'03d5937a-dad8-9045-beb6-aaa920fd056c').
(#isProperty -> false).
(#label -> 'Method').
(#next -> #'57addd32-9f03-8e44-9c71-46497f3e7209').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Context).
(#outputKind -> CompiledMethod).
(#priority -> 4920).
(#view -> ViTreeViewExtended)
}))
})