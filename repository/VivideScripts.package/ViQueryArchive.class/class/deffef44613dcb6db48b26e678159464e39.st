definitions
deffef44613dcb6db48b26e678159464e39
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 September 2013 7:37:43 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ClassDescription); add: (#id->#'fef44613-dcb6-db48-b26e-678159464e39'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:pkg | pkg classes intersection: ((SystemNavigation allUnusedClassesWithout: {{}.{}}) collect: [:nm | Smalltalk at: nm])]'); add: (#mapType->#each); add: (#block->[:pkg | pkg classes intersection: ((SystemNavigation allUnusedClassesWithout: {{}.{}}) collect: [:nm | Smalltalk at: nm])]); yourself)