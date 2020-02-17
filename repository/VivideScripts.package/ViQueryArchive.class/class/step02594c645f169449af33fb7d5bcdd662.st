steps
step02594c645f169449af33fb7d5bcdd662
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'49f5375e-5751-224b-b2c7-bba5510ac649').
(#iconCode -> 'nil').
(#id -> #'02594c64-5f16-9449-af33-fb7d5bcdd662').
(#isProperty -> false).
(#label -> nil).
(#next -> #'65a025ef-589e-ed41-bba5-4b8135bf3ba9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1130)
}))
})