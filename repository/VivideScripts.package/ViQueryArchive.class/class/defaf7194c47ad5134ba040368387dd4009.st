definitions
defaf7194c47ad5134ba040368387dd4009
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:def | #icon -> (def updateSetDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon])]).
(#class -> ViQueryMapDefinition).
(#id -> #'af7194c4-7ad5-134b-a040-368387dd4009').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 9:08:35 pm')})).
(#sourceCode -> '[:def | #icon -> (def updateSetDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})