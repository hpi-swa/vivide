steps
stepfcc664844caf354f8f24d727784b3424
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:entry | entry creationDateAndTime asDate asString] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'291f6187-be59-5d48-8032-fc10c146f101').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:entry | entry creationDateAndTime asDate asString] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'291f6187-be59-5d48-8032-fc10c146f101').
(#iconCode -> 'nil').
(#id -> #'fcc66484-4caf-354f-8f24-d727784b3424').
(#isProperty -> false).
(#label -> nil).
(#next -> #'51682d2b-50c7-2d4e-bbad-94af2dd69be7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2560)
}))
})