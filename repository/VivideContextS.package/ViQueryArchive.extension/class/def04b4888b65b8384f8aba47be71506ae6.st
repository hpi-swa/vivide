*VivideContextS-definitions
def04b4888b65b8384f8aba47be71506ae6
	<definition>

	^ ((Dictionary new) add: (#inputKind->CSPartialMethod); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'10 January 2014 10:45:13 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'04b4888b-65b8-384f-8aba-47be71506ae6'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:partialMethod | {
	#text -> (ViLabelService doObject: partialMethod method).
	#icon -> ((partialMethod method literalStrings anySatisfy: [:literal | literal startsWith: #proceed])
		ifTrue: [UiFugueIcons control000SmallIcon] ifFalse: [ViIconService blankIcon])}]'); add: (#mapType->#each); add: (#block->[:partialMethod | {
	#text -> (ViLabelService doObject: partialMethod method).
	#icon -> ((partialMethod method literalStrings anySatisfy: [:literal | literal startsWith: #proceed])
		ifTrue: [UiFugueIcons control000SmallIcon] ifFalse: [ViIconService blankIcon])}]); yourself)