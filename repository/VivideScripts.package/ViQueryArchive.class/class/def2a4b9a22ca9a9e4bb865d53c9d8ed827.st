definitions
def2a4b9a22ca9a9e4bb865d53c9d8ed827
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: ['local']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2a4b9a22-ca9a-9e4b-b865-d53c9d8ed827').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:00:32 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: [''local'']
	ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})