steps
stepc7e12f641638ba4392a55110b39063f2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: ['variables']
	ifFalse: [obj isBehavior
		ifTrue: ['classes']
		ifFalse: ['methods']]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'06866ea3-c061-0042-ba48-bf733322d2d6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:58:12 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: [''variables'']
	ifFalse: [obj isBehavior
		ifTrue: [''classes'']
		ifFalse: [''methods'']]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'06866ea3-c061-0042-ba48-bf733322d2d6').
(#iconCode -> 'nil').
(#id -> #'c7e12f64-1638-ba43-92a5-5110b39063f2').
(#isProperty -> false).
(#label -> nil).
(#next -> #'1a41c168-d896-8c4d-bdc8-b6e9ecdd16ea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:58:12 pm').
(#priority -> 3770)
}))
})