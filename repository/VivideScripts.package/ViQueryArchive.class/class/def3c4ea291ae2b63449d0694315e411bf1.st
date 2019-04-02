definitions
def3c4ea291ae2b63449d0694315e411bf1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects | objects select: [:method | method selector endsWith: #Icon]]).
(#class -> ViQueryMapDefinition).
(#id -> #'3c4ea291-ae2b-6344-9d06-94315e411bf1').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects | objects select: [:method | method selector endsWith: #Icon]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})