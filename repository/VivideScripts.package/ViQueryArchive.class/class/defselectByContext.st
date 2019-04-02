definitions
defselectByContext
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects | objects select: [:obj | true]]).
(#class -> ViQueryMapDefinition).
(#id -> #selectByContext).
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects | objects select: [:obj | true]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})