steps
stepe847db70263a3b49a7929d80a42da426
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'3167effd-0321-144a-9fe0-e6143bc63133').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3167effd-0321-144a-9fe0-e6143bc63133').
(#iconCode -> 'nil').
(#id -> #'e847db70-263a-3b49-a792-9d80a42da426').
(#isProperty -> false).
(#label -> nil).
(#next -> #'f3d7bcce-59e7-6248-811f-b04d54ba406d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:52:25 pm').
(#priority -> 3520)
}))
})