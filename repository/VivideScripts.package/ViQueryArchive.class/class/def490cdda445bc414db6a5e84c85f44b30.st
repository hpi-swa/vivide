definitions
def490cdda445bc414db6a5e84c85f44b30
	<definition>

	^ (Dictionary newFrom: {
(#block -> [(Smalltalk globals instVarNamed: #bindings) associations select: [:assoc |
		assoc value isBehavior not]]).
(#class -> ViQueryMapDefinition).
(#id -> #'490cdda4-45bc-414d-b6a5-e84c85f44b30').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:06:57 am')})).
(#sourceCode -> '[(Smalltalk globals instVarNamed: #bindings) associations select: [:assoc |
		assoc value isBehavior not]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})