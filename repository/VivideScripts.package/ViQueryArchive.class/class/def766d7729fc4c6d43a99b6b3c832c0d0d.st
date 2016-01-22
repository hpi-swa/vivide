definitions
def766d7729fc4c6d43a99b6b3c832c0d0d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:refs | refs reject: [:ref | ref selector beginsWith: #test]]).
(#class -> ViQueryMapDefinition).
(#id -> #'766d7729-fc4c-6d43-a99b-6b3c832c0d0d').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:15:27 pm')})).
(#sourceCode -> '[:refs | refs reject: [:ref | ref selector beginsWith: #test]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})