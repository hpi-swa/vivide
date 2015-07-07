definitions
def86dd3fe01fb1324d9bf1d4bef5df2a5c
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 2:47:45 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'86dd3fe0-1fb1-324d-9bf1-d4bef5df2a5c'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | #text -> ((SystemNavigation default allCallsOn: step id) select: [:ref | ref classSymbol ~= #ViQueryArchive]) size]'); add: (#mapType->#each); add: (#block->[:step | #text -> ((SystemNavigation default allCallsOn: step id) select: [:ref | ref classSymbol ~= #ViQueryArchive]) size]); yourself)