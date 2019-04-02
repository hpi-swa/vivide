definitions
def0f52af7d7abd86499ab1e4f61fd55256
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0f52af7d-7abd-8649-9ab1-e4f61fd55256').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:59:20 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})