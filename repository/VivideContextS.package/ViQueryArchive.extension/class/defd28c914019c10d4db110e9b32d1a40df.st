*VivideContextS-definitions
defd28c914019c10d4db110e9b32d1a40df
	<definition>

	^ ((Dictionary new) add: (#inputKind->ClassDescription); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'2 June 2014 3:53:04 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ByteSymbol); add: (#id->#'d28c9140-19c1-0d4d-b110-e9b32d1a40df'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:class | (class methodDict values
	select: [:method | method isContextSMethod])
	gather: [:method | method partialMethods
		gather: [:partialMethods | partialMethods layers]]]'); add: (#mapType->#each); add: (#block->[:class | (class methodDict values
	select: [:method | method isContextSMethod])
	gather: [:method | method partialMethods
		gather: [:partialMethods | partialMethods layers]]]); yourself)