steps
step58fabb91d27b8e47b2080f6ee4958df1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2123e223-61ff-2145-856f-1a7f64283322').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:49:56 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2123e223-61ff-2145-856f-1a7f64283322').
(#iconCode -> 'nil').
(#id -> #'58fabb91-d27b-8e47-b208-0f6ee4958df1').
(#isProperty -> false).
(#label -> nil).
(#next -> #'19aa31e9-da2d-0646-bcb5-c43217a64c10').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Array).
(#priority -> 640).
(#view -> ViTreeViewExtended)
}))
})