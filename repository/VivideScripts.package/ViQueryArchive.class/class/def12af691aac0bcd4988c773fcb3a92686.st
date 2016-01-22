definitions
def12af691aac0bcd4988c773fcb3a92686
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:change | #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon])]).
(#class -> ViQueryMapDefinition).
(#id -> #'12af691a-ac0b-cd49-88c7-73fcb3a92686').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 5:05:04 pm')})).
(#sourceCode -> '[:change | #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})