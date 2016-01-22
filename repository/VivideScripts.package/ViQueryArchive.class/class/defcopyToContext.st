definitions
defcopyToContext
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects :context | context contents: objects. objects]).
(#class -> ViQueryMapDefinition).
(#id -> #copyToContext).
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects :context | context contents: objects. objects]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})