definitions
defdc06130aabe9ef499766c34cc0b54d74
	<definition>

	^ (Dictionary newFrom: {
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
})