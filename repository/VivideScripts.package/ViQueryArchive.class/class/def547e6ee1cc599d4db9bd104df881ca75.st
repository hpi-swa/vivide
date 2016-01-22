definitions
def547e6ee1cc599d4db9bd104df881ca75
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op | {
	#text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: ["ViLabelService doObject: def asMethodReference" def selector]
		ifFalse: [def description in: [:d | d at: (2 min: d size)]]]).
	#icon -> (true caseOf: {
		[op isAddition] -> [UiFugueIcons plusSmallIcon].
		[op isModification] -> [UiFugueIcons pencilSmallIcon].
		[op isRemoval] -> [UiFugueIcons minusSmallIcon]} otherwise: [])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'547e6ee1-cc59-9d4d-b9bd-104df881ca75').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op | {
	#text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: ["ViLabelService doObject: def asMethodReference" def selector]
		ifFalse: [def description in: [:d | d at: (2 min: d size)]]]).
	#icon -> (true caseOf: {
		[op isAddition] -> [UiFugueIcons plusSmallIcon].
		[op isModification] -> [UiFugueIcons pencilSmallIcon].
		[op isRemoval] -> [UiFugueIcons minusSmallIcon]} otherwise: [])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})