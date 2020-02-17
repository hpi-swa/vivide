steps
step985a7a4ba46d7744abf1de2be369fc56
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt receiver]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'dd6f227e-c7bc-3843-aa10-7deb3094959a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:58:29 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt receiver]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dd6f227e-c7bc-3843-aa10-7deb3094959a').
(#iconCode -> 'UiFugueIcons magnifierMediumIcon').
(#id -> #'985a7a4b-a46d-7744-abf1-de2be369fc56').
(#isProperty -> false).
(#label -> 'Receiver Inspector').
(#next -> #'bce4eb13-a02d-144e-96b2-cd2944b85fee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#priority -> 5160).
(#view -> ViTreeViewExtended)
}))
})