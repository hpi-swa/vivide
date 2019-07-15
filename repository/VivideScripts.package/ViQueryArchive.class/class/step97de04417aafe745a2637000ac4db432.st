steps
step97de04417aafe745a2637000ac4db432
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:assoc | (assoc value listAtCategoryNamed: assoc key)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'725b8468-cb5c-0641-bbb5-c3b42a45caae').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:26:16 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:assoc | (assoc value listAtCategoryNamed: assoc key)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'725b8468-cb5c-0641-bbb5-c3b42a45caae').
(#iconCode -> 'nil').
(#id -> #'97de0441-7aaf-e745-a263-7000ac4db432').
(#isProperty -> false).
(#label -> nil).
(#next -> #'1d71708a-5456-7942-9c1c-c6c37baec8c9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:12:20 pm').
(#priority -> 5930)
}))
})