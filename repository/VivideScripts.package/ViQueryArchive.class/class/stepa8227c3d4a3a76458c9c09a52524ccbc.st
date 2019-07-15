steps
stepa8227c3d4a3a76458c9c09a52524ccbc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1ffcc481-1d37-ca47-802f-a4783a24e092').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1ffcc481-1d37-ca47-802f-a4783a24e092').
(#iconCode -> 'nil').
(#id -> #'a8227c3d-4a3a-7645-8c9c-09a52524ccbc').
(#isProperty -> false).
(#label -> 'Layout properties').
(#next -> #'494f08ea-fbe5-8341-b949-c5ac1b22c09b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am').
(#inputKind -> Morph).
(#priority -> 600).
(#view -> ViTreeViewExtended)
}))
})