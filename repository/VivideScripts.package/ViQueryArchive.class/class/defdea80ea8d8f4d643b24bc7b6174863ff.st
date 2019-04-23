definitions
defdea80ea8d8f4d643b24bc7b6174863ff
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: ['local']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), '.', pkg name asLowercase]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'dea80ea8-d8f4-d643-b24b-c7b6174863ff').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:17:34 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: [''local'']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), ''.'', pkg name asLowercase]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})