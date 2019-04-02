definitions
def5158517a57637048a1fc00307cafd0c1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | (PackageOrganizer default packageOfClass: ref actualClass ifNone: [])
	ifNil: ['(no package)'] ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'5158517a-5763-7048-a1fc-00307cafd0c1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:37 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | (PackageOrganizer default packageOfClass: ref actualClass ifNone: [])
	ifNil: [''(no package)''] ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})