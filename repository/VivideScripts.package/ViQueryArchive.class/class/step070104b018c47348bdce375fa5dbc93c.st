steps
step070104b018c47348bdce375fa5dbc93c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | ref actualClass category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bf274afd-16df-a24b-bc4a-5f558b1d5f84').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | ref actualClass category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bf274afd-16df-a24b-bc4a-5f558b1d5f84').
(#iconCode -> 'nil').
(#id -> #'070104b0-18c4-7348-bdce-375fa5dbc93c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'668146bb-9b8d-f241-b4ed-dcc75bd19810').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2650)
}))
})