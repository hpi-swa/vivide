definitions
defd93c8ab2e933e341a657de521dc20523
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:step | (PackageOrganizer default
	packageOfSystemCategory: step baseClass category
	ifNone: [])
		ifNil: [step baseClass category]
		ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d93c8ab2-e933-e341-a657-de521dc20523').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:36:18 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:step | (PackageOrganizer default
	packageOfSystemCategory: step baseClass category
	ifNone: [])
		ifNil: [step baseClass category]
		ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})