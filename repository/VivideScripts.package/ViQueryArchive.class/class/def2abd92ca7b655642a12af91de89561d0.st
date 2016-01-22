definitions
def2abd92ca7b655642a12af91de89561d0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]).
(#class -> ViQueryMapDefinition).
(#id -> #'2abd92ca-7b65-5642-a12a-f91de89561d0').
(#inputKind -> DirectoryEntryFile).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:13:03 pm')})).
(#sourceCode -> '[:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})