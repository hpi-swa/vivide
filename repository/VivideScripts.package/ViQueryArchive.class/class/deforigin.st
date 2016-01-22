definitions
deforigin
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | ViObjectOriginService doObject: obj]).
(#class -> ViQueryMapDefinition).
(#id -> #origin).
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | ViObjectOriginService doObject: obj]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})