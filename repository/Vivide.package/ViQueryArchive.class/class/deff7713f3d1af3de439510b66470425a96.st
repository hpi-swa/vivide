definitions
deff7713f3d1af3de439510b66470425a96
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 5:17:12 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'f7713f3d-1af3-de43-9510-b66470425a96'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | 
	Time now print24WithoutSeconds, '' -- '',
	
	(obj isForm
		ifTrue: [''Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}'' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString])]'); add: (#mapType->#each); add: (#block->[:obj | 
	Time now print24WithoutSeconds, ' -- ',
	
	(obj isForm
		ifTrue: ['Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString])]); yourself)