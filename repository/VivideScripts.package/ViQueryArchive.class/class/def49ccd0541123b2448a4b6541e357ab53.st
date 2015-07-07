definitions
def49ccd0541123b2448a4b6541e357ab53
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 4:59:20 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'49ccd054-1123-b244-8a4b-6541e357ab53'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]]'); add: (#mapType->#each); add: (#block->[:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]]); yourself)