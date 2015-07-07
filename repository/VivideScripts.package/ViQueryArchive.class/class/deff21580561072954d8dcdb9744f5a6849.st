definitions
deff21580561072954d8dcdb9744f5a6849
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 September 2013 3:36:18 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'f2158056-1072-954d-8dcd-b9744f5a6849'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | (PackageOrganizer default
	packageOfSystemCategory: step baseClass category
	ifNone: [])
		ifNil: [step baseClass category]
		ifNotNil: [:pkg | pkg name]]'); add: (#mapType->#each); add: (#block->[:step | (PackageOrganizer default
	packageOfSystemCategory: step baseClass category
	ifNone: [])
		ifNil: [step baseClass category]
		ifNotNil: [:pkg | pkg name]]); yourself)