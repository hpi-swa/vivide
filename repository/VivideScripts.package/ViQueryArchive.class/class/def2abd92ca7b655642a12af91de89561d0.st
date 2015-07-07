definitions
def2abd92ca7b655642a12af91de89561d0
	<definition>

	^ ((Dictionary new) add: (#inputKind->DirectoryEntryFile); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 5:13:03 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'2abd92ca-7b65-5642-a12a-f91de89561d0'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]'); add: (#mapType->#each); add: (#block->[:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]); yourself)