definitions
defc4058b303d6e7348a6e6b421ac935378
	<definition>

	^ ((Dictionary new) add: (#inputKind->String); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 4:16:23 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Behavior); add: (#id->#'c4058b30-3d6e-7348-a6e6-b421ac935378'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]'); add: (#mapType->#each); add: (#block->[:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]); yourself)