definitions
def12af691aac0bcd4988c773fcb3a92686
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 June 2014 5:05:04 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'12af691a-ac0b-cd49-88c7-73fcb3a92686'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:change | #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon])]'); add: (#mapType->#each); add: (#block->[:change | #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon])]); yourself)