definitions
defeb01a990c76c494eaba118ba6d51bb19
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'eb01a990-c76c-494e-aba1-18ba6d51bb19'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection]'); add: (#mapType->#all); add: (#block->[:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection]); yourself)