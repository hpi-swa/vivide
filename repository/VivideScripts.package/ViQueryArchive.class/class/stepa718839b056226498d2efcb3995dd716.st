steps
stepa718839b056226498d2efcb3995dd716
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'e107394e-979a-814b-b60f-d35cdf88fb2f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:30:58 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e107394e-979a-814b-b60f-d35cdf88fb2f').
(#iconCode -> 'nil').
(#id -> #'a718839b-0562-2649-8d2e-fcb3995dd716').
(#isProperty -> false).
(#label -> nil).
(#next -> #'01ee0bd6-0573-124c-b84a-3d699a2e3263').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:30:58 am')
}))
})