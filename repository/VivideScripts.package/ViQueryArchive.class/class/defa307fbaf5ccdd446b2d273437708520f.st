definitions
defa307fbaf5ccdd446b2d273437708520f
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'17 September 2013 12:03:56 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'a307fbaf-5ccd-d446-b2d2-73437708520f'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}]); yourself)