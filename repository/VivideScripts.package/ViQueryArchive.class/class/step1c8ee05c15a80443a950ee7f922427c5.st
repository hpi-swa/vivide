steps
step1c8ee05c15a80443a950ee7f922427c5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'137cbd22-232a-4f44-a6a9-e53e423d6acc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:36:11 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'137cbd22-232a-4f44-a6a9-e53e423d6acc').
(#iconCode -> 'nil').
(#id -> #'1c8ee05c-15a8-0443-a950-ee7f922427c5').
(#isProperty -> false).
(#label -> 'Count Instances').
(#next -> #'894088c2-9d24-5b40-9246-2e1a298fe761').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> SystemNavigation).
(#outputKind -> Bag).
(#priority -> 820).
(#view -> ViTreeViewExtended)
}))
})