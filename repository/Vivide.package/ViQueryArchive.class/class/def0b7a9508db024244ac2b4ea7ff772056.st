definitions
def0b7a9508db024244ac2b4ea7ff772056
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 September 2013 3:17:34 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'0b7a9508-db02-4244-ac2b-4ea7ff772056'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: [''local'']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), ''.'', pkg name asLowercase]]'); add: (#mapType->#each); add: (#block->[:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: ['local']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), '.', pkg name asLowercase]]); yourself)