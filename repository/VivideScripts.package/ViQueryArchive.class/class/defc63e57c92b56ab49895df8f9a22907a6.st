definitions
defc63e57c92b56ab49895df8f9a22907a6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:morph | #text -> (morph model ifNil: ['-'] ifNotNil: [:m | m asString])]).
(#class -> ViQueryMapDefinition).
(#id -> #'c63e57c9-2b56-ab49-895d-f8f9a22907a6').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 March 2014 10:13:57 am')})).
(#sourceCode -> '[:morph | #text -> (morph model ifNil: [''-''] ifNotNil: [:m | m asString])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})