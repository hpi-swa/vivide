definitions
deff997408386d5d54f9ee0ba85d5b22720
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | #text -> (obj isDirectory
	ifTrue: ['']
	ifFalse: [(obj size // 1024 max: 1) asString, ' KB'])]).
(#class -> ViQueryMapDefinition).
(#id -> #'f9974083-86d5-d54f-9ee0-ba85d5b22720').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | #text -> (obj isDirectory
	ifTrue: ['''']
	ifFalse: [(obj size // 1024 max: 1) asString, '' KB''])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})