steps
step4762774bb64ef14b8e4ad0fc1dc20251
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'34b3f9d7-cfbc-c042-849c-6f4ea51f7acb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'34b3f9d7-cfbc-c042-849c-6f4ea51f7acb').
(#iconCode -> 'nil').
(#id -> #'4762774b-b64e-f14b-8e4a-d0fc1dc20251').
(#isProperty -> false).
(#label -> 'Methods w/ timestamp').
(#next -> #'172f485a-7e69-0d4a-a5ad-7233f83da2dc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> UiIcons).
(#outputKind -> CompiledMethod).
(#priority -> 240).
(#view -> ViTreeViewExtended)
}))
})