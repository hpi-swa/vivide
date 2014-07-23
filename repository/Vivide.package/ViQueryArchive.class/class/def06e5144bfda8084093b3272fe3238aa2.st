definitions
def06e5144bfda8084093b3272fe3238aa2
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'06e5144b-fda8-0840-93b3-272fe3238aa2'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:project | #text -> (project currentVersion
	ifNil: [''-'']
	ifNotNil: [:v | v versionNumber])]'); add: (#mapType->#each); add: (#block->[:project | #text -> (project currentVersion
	ifNil: ['-']
	ifNotNil: [:v | v versionNumber])]); yourself)