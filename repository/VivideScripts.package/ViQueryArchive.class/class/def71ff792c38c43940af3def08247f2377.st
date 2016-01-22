definitions
def71ff792c38c43940af3def08247f2377
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op | #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [ViToolSet printRelativeTimeStamp: def fullTimeStamp]
		ifFalse: ['-']])]).
(#class -> ViQueryMapDefinition).
(#id -> #'71ff792c-38c4-3940-af3d-ef08247f2377').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op | #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [ViToolSet printRelativeTimeStamp: def fullTimeStamp]
		ifFalse: [''-'']])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})