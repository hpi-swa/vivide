steps
step6538b2d10d571345abf64be841b78c42
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d920d2d4-12dd-b74b-bd76-6da213af03f6').
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
(#definition -> #'d920d2d4-12dd-b74b-bd76-6da213af03f6').
(#iconCode -> 'nil').
(#id -> #'6538b2d1-0d57-1345-abf6-4be841b78c42').
(#isProperty -> false).
(#label -> 'Methods (Signatures)').
(#next -> #'f0de7c84-7017-2d42-860d-e743620ce3b4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> UiIcons).
(#outputKind -> CompiledMethod).
(#priority -> 6490).
(#view -> ViTreeViewExtended)
}))
})