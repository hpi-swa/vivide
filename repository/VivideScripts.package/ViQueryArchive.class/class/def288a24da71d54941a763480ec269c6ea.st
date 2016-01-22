definitions
def288a24da71d54941a763480ec269c6ea
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | (obj isKindOf: DirectoryEntryDirectory) ifTrue: ['a) Folders'] ifFalse: ['b) Files']]).
(#class -> ViQueryMapDefinition).
(#id -> #'288a24da-71d5-4941-a763-480ec269c6ea').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | (obj isKindOf: DirectoryEntryDirectory) ifTrue: [''a) Folders''] ifFalse: [''b) Files'']]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})