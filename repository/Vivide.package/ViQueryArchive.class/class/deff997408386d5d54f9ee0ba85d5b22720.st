definitions
deff997408386d5d54f9ee0ba85d5b22720
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'f9974083-86d5-d54f-9ee0-ba85d5b22720'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | #text -> (obj isDirectory
	ifTrue: ['''']
	ifFalse: [(obj size // 1024 max: 1) asString, '' KB''])]'); add: (#mapType->#each); add: (#block->[:obj | #text -> (obj isDirectory
	ifTrue: ['']
	ifFalse: [(obj size // 1024 max: 1) asString, ' KB'])]); yourself)