steps
stepab4af50f105f424d95d136bfd2f47ad3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0f52af7d-7abd-8649-9ab1-e4f61fd55256').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:59:20 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0f52af7d-7abd-8649-9ab1-e4f61fd55256').
(#iconCode -> 'nil').
(#id -> #'ab4af50f-105f-424d-95d1-36bfd2f47ad3').
(#isProperty -> false).
(#label -> nil).
(#next -> #'78e451df-ad36-ef4d-9e21-2fb3e7bae0f1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:18:31 am').
(#priority -> 5020)
}))
})