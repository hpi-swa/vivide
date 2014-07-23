definitions
deficonAndLabel
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#iconAndLabel); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj)}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj)}]); yourself)