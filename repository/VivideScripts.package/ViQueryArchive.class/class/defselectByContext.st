definitions
defselectByContext
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects :context | objects select: [:obj | context contents includes: obj]]).
(#class -> ViQueryMapDefinition).
(#id -> #selectByContext).
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects :context | objects select: [:obj | context contents includes: obj]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})