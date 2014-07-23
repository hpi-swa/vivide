definitions
defd77d8164faa6574d9abcf9712d2c6d20
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 May 2014 11:09:25 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d77d8164-faa6-574d-9abc-f9712d2c6d20'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:hit | #text -> (((hit at: #info) at: #venue) at: ''@conference'' ifAbsent: [''-''])]'); add: (#mapType->#each); add: (#block->[:hit | #text -> (((hit at: #info) at: #venue) at: '@conference' ifAbsent: ['-'])]); yourself)