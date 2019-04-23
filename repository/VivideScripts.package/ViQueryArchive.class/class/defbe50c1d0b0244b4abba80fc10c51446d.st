definitions
defbe50c1d0b0244b4abba80fc10c51446d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | 
	obj isVariableBinding ifTrue: ['(Bindings)'] ifFalse: [
		(PackageOrganizer default packageOfSystemCategory: obj class category ifNone: []) name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'be50c1d0-b024-4b4a-bba8-0fc10c51446d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:40:32 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | 
	obj isVariableBinding ifTrue: [''(Bindings)''] ifFalse: [
		(PackageOrganizer default packageOfSystemCategory: obj class category ifNone: []) name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})