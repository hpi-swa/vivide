definitions
defbcbc9f733ca40d4e9933e2a6d2ea32e4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:definition | definition organization codeDefinitions
	select: [:def | def mapType == definition mapType]]).
(#class -> ViQueryMapDefinition).
(#id -> #'bcbc9f73-3ca4-0d4e-9933-e2a6d2ea32e4').
(#inputKind -> ViQueryStepDefinition).
(#mapType -> #each).
(#outputKind -> ViQueryStepDefinition).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '4 September 2013 12:59:07 pm')})).
(#sourceCode -> '[:definition | definition organization codeDefinitions
	select: [:def | def mapType == definition mapType]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})