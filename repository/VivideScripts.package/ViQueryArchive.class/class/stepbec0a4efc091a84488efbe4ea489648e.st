steps
stepbec0a4efc091a84488efbe4ea489648e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c16569de-9c9f-a147-9be5-b9b90424d1de').
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
(#definition -> #'c16569de-9c9f-a147-9be5-b9b90424d1de').
(#iconCode -> 'nil').
(#id -> #'bec0a4ef-c091-a844-88ef-be4ea489648e').
(#isProperty -> false).
(#label -> 'Methods').
(#next -> #'dd7cc162-78d3-5946-8ad0-7e30f7b46f6d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> UiIcons).
(#outputKind -> CompiledMethod).
(#priority -> 100).
(#view -> ViTreeViewExtended)
}))
})