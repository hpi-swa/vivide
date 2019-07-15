steps
stepfd62bf2f377ce64ab62a4f2399a054e1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | (PackageOrganizer default packageOfClass: ref actualClass ifNone: [])
	ifNil: ['(no package)'] ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5158517a-5763-7048-a1fc-00307cafd0c1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:37 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | (PackageOrganizer default packageOfClass: ref actualClass ifNone: [])
	ifNil: [''(no package)''] ifNotNil: [:pkg | pkg name]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5158517a-5763-7048-a1fc-00307cafd0c1').
(#iconCode -> 'nil').
(#id -> #'fd62bf2f-377c-e64a-b62a-4f2399a054e1').
(#isProperty -> false).
(#label -> nil).
(#next -> #'4b13c5ec-1484-1b45-b800-ac2bd6af1360').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MethodReference).
(#outputKind -> String).
(#priority -> 1210)
}))
})