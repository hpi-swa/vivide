definitions
def2d539c1bdf9b604eae8d70eff84ca13e
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'11 February 2014 10:36:49 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'2d539c1b-df9b-604e-ae8d-70eff84ca13e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> ((ViLabelStringService doObject: obj value) truncateWithElipsisTo: 30).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> ((ViLabelStringService doObject: obj value) truncateWithElipsisTo: 30).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}]); yourself)