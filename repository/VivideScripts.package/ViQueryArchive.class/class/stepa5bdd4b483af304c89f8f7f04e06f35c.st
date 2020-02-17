steps
stepa5bdd4b483af304c89f8f7f04e06f35c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'047121a8-c14e-b445-896a-5444779ffd4b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'047121a8-c14e-b445-896a-5444779ffd4b').
(#iconCode -> 'nil').
(#id -> #'a5bdd4b4-83af-304c-89f8-f7f04e06f35c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'70abd3f8-b616-3145-bfbe-651358866ea6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 2:04:23 pm').
(#priority -> 5730)
}))
})