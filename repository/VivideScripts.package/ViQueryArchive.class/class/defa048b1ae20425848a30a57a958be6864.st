definitions
defa048b1ae20425848a30a57a958be6864
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:def | #icon -> (def updateClearDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon])]).
(#class -> ViQueryMapDefinition).
(#id -> #'a048b1ae-2042-5848-a30a-57a958be6864').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 9:10:21 pm')})).
(#sourceCode -> '[:def | #icon -> (def updateClearDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})