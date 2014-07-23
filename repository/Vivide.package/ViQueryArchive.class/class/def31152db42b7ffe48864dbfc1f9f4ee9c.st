definitions
def31152db42b7ffe48864dbfc1f9f4ee9c
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'31152db4-2b7f-fe48-864d-bfc1f9f4ee9c'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:project | #text -> (project currentVersion
	ifNil: [''-'']
	ifNotNil: [:v | v timestamp])]'); add: (#mapType->#each); add: (#block->[:project | #text -> (project currentVersion
	ifNil: ['-']
	ifNotNil: [:v | v timestamp])]); yourself)