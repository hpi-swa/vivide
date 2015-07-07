definitions
defa66f00c922cb0a48a223d73699b16746
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 September 2013 1:08:17 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'a66f00c9-22cb-0a48-a223-d73699b16746'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (ViLabelService doObject: obj value class).
	#icon -> ((ViIconService doObject: obj value class) ifNil: [ViIcons blankIcon])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (ViLabelService doObject: obj value class).
	#icon -> ((ViIconService doObject: obj value class) ifNil: [ViIcons blankIcon])}]); yourself)