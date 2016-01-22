definitions
def06e5144bfda8084093b3272fe3238aa2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:project | #text -> (project currentVersion
	ifNil: ['-']
	ifNotNil: [:v | v versionNumber])]).
(#class -> ViQueryMapDefinition).
(#id -> #'06e5144b-fda8-0840-93b3-272fe3238aa2').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:project | #text -> (project currentVersion
	ifNil: [''-'']
	ifNotNil: [:v | v versionNumber])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})