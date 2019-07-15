steps
stepa127f2fae9457b48b6ca53f8cdfab01b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'2a4b9a22-ca9a-9e4b-b865-d53c9d8ed827').
(#iconCode -> 'nil').
(#id -> #'a127f2fa-e945-7b48-b6ca-53f8cdfab01b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6b51cd4e-c681-064a-b60d-e1552154d686').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:00:32 pm').
(#priority -> 4730)
}))
})