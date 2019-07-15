steps
stepcf18cd020e0b344ca7ee82358865b598
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:flag | flag reference actualClass category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d62d3ec6-9c8d-d740-a414-f9e8aaf082fe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:49:23 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:flag | flag reference actualClass category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d62d3ec6-9c8d-d740-a414-f9e8aaf082fe').
(#iconCode -> 'nil').
(#id -> #'cf18cd02-0e0b-344c-a7ee-82358865b598').
(#isProperty -> false).
(#label -> nil).
(#next -> #'378f9f6a-6cdf-2d48-8649-a57c4661aac7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:49:23 pm').
(#priority -> 3320)
}))
})