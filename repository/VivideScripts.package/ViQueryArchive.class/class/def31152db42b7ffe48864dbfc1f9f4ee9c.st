definitions
def31152db42b7ffe48864dbfc1f9f4ee9c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:project | #text -> (project currentVersion
	ifNil: ['-']
	ifNotNil: [:v | v timestamp])]).
(#class -> ViQueryMapDefinition).
(#id -> #'31152db4-2b7f-fe48-864d-bfc1f9f4ee9c').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:project | #text -> (project currentVersion
	ifNil: [''-'']
	ifNotNil: [:v | v timestamp])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})