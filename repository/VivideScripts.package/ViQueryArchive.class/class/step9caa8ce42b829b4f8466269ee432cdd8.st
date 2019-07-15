steps
step9caa8ce42b829b4f8466269ee432cdd8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'70db1b39-6525-614c-abe4-141553aea6d5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'70db1b39-6525-614c-abe4-141553aea6d5').
(#iconCode -> 'nil').
(#id -> #'9caa8ce4-2b82-9b4f-8466-269ee432cdd8').
(#isProperty -> false).
(#label -> nil).
(#next -> #'0f80a3d1-e8c5-7848-b5ef-561321c3d70e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2720)
}))
})