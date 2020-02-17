steps
step1f346fc9d1d0494c8f22fa56031636cb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bc9ac28f-49e4-a44e-8504-35e7bb36db7d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:49:56 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bc9ac28f-49e4-a44e-8504-35e7bb36db7d').
(#iconCode -> 'nil').
(#id -> #'1f346fc9-d1d0-494c-8f22-fa56031636cb').
(#isProperty -> false).
(#label -> nil).
(#next -> #'46817f32-e66b-9342-a3ad-abe14e9713c9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Array).
(#priority -> 630).
(#view -> ViTreeViewExtended)
}))
})