definitions
defa5322375d829bb409181f4ce0b5ec1fd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {#text -> (ViLabelService doObject: obj key). #icon -> (ViIconService doObject: obj key)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'a5322375-d829-bb40-9181-f4ce0b5ec1fd').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {#text -> (ViLabelService doObject: obj key). #icon -> (ViIconService doObject: obj key)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})