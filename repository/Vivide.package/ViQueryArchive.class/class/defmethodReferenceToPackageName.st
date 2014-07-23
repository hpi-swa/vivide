definitions
defmethodReferenceToPackageName
	<definition>

	^ ((Dictionary new) add: (#inputKind->MethodReference); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->String); add: (#id->#methodReferenceToPackageName); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:ref | (PackageOrganizer default packageOfMethod: ref ifNone: [])
	ifNil: [''(no package)''] ifNotNil: [:pkg | pkg name]]'); add: (#mapType->#each); add: (#block->[:ref | (PackageOrganizer default packageOfMethod: ref ifNone: [])
	ifNil: ['(no package)'] ifNotNil: [:pkg | pkg name]]); yourself)