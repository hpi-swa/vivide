definitions
defd905ce0221929c489eb3ceb8d1ceaf80
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'12 November 2013 4:56:20 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d905ce02-2192-9c48-9eb3-ceb8d1ceaf80'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}]); yourself)