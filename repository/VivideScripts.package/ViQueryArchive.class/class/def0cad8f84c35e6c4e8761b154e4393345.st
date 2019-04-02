definitions
def0cad8f84c35e6c4e8761b154e4393345
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0cad8f84-c35e-6c4e-8761-b154e4393345').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:59:20 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})