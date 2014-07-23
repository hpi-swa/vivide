definitions
def7b8f1fcb28665a41872d15f9bd110ddf
	<definition>

	^ ((Dictionary new) add: (#inputKind->DirectoryEntryFile); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 5:59:01 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Text); add: (#id->#'7b8f1fcb-2866-5a41-872d-15f9bd110ddf'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]'); add: (#mapType->#each); add: (#block->[:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]); yourself)