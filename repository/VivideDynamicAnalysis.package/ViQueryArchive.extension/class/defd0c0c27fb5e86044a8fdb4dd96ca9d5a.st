*VivideDynamicAnalysis-definitions
defd0c0c27fb5e86044a8fdb4dd96ca9d5a
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 January 2014 1:54:52 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d0c0c27f-b5e8-6044-a8fd-b4dd96ca9d5a'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | (PackageOrganizer default packageOfClass: obj key ifNone: [])
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]]'); add: (#mapType->#each); add: (#block->[:obj | (PackageOrganizer default packageOfClass: obj key ifNone: [])
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]]); yourself)