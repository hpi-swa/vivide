definitions
def49f5375e5751224bb2c7bba5510ac649
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:op | true caseOf: {
	[op definition isClassDefinition] -> ['Classes'].
	[op definition isClassDefinitionExtension] -> ['Class Extensions'].
	[op definition isMethodDefinition] -> ['Methods'].
	[op definition isOrganizationDefinition] -> ['Organizations'].
	[op definition isScriptDefinition] -> ['Scripts']}] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'49f5375e-5751-224b-b2c7-bba5510ac649').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:op | true caseOf: {
	[op definition isClassDefinition] -> [''Classes''].
	[op definition isClassDefinitionExtension] -> [''Class Extensions''].
	[op definition isMethodDefinition] -> [''Methods''].
	[op definition isOrganizationDefinition] -> [''Organizations''].
	[op definition isScriptDefinition] -> [''Scripts'']}] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})