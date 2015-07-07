definitions
def547e6ee1cc599d4db9bd104df881ca75
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'547e6ee1-cc59-9d4d-b9bd-104df881ca75'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:op | {
	#text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: ["ViLabelService doObject: def asMethodReference" def selector]
		ifFalse: [def description in: [:d | d at: (2 min: d size)]]]).
	#icon -> (true caseOf: {
		[op isAddition] -> [UiFugueIcons plusSmallIcon].
		[op isModification] -> [UiFugueIcons pencilSmallIcon].
		[op isRemoval] -> [UiFugueIcons minusSmallIcon]} otherwise: [])}]'); add: (#mapType->#each); add: (#block->[:op | {
	#text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: ["ViLabelService doObject: def asMethodReference" def selector]
		ifFalse: [def description in: [:d | d at: (2 min: d size)]]]).
	#icon -> (true caseOf: {
		[op isAddition] -> [UiFugueIcons plusSmallIcon].
		[op isModification] -> [UiFugueIcons pencilSmallIcon].
		[op isRemoval] -> [UiFugueIcons minusSmallIcon]} otherwise: [])}]); yourself)