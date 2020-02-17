steps
step1d58d23a244cb84e844852a3acfb1544
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | ref classSymbol] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4d16febb-85d7-7042-b3c5-ffc55d155719').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | ref classSymbol] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4d16febb-85d7-7042-b3c5-ffc55d155719').
(#iconCode -> 'nil').
(#id -> #'1d58d23a-244c-b84e-8448-52a3acfb1544').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ac005f0e-6178-f74e-9fdc-206e86af0a7d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1350)
}))
})