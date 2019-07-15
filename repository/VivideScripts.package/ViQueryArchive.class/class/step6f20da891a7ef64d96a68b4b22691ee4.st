steps
step6f20da891a7ef64d96a68b4b22691ee4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | (PackageOrganizer default packageOfMethod: ref ifNone: [])
	ifNil: ['(no package)'] ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0799bf72-ceee-4845-b8ef-1d1646570020').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | (PackageOrganizer default packageOfMethod: ref ifNone: [])
	ifNil: [''(no package)''] ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0799bf72-ceee-4845-b8ef-1d1646570020').
(#iconCode -> 'nil').
(#id -> #'6f20da89-1a7e-f64d-96a6-8b4b22691ee4').
(#isProperty -> false).
(#label -> nil).
(#next -> #'dd25524a-7696-9349-8a4f-d4d5e5251018').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MethodReference).
(#outputKind -> String).
(#priority -> 1520)
}))
})