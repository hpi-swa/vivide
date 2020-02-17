steps
stepf8f2564d0b66d6459646191f5736dcef
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (obj isKindOf: DirectoryEntryDirectory) ifTrue: ['a) Folders'] ifFalse: ['b) Files']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'dc06130a-abe9-ef49-9766-c34cc0b54d74').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | (obj isKindOf: DirectoryEntryDirectory) ifTrue: [''a) Folders''] ifFalse: [''b) Files'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dc06130a-abe9-ef49-9766-c34cc0b54d74').
(#iconCode -> 'nil').
(#id -> #'f8f2564d-0b66-d645-9646-191f5736dcef').
(#isProperty -> false).
(#label -> nil).
(#next -> #'76734509-5fc3-2841-a506-a361aa9446c4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2760)
}))
})