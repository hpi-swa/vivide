definitions
defe41f5f5bca8c09469f029a0f2dc0269e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects :context | objects select: [:obj | obj third notNil]]).
(#class -> ViQueryMapDefinition).
(#id -> #'e41f5f5b-ca8c-0946-9f02-9a0f2dc0269e').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 4:21:57 pm')})).
(#sourceCode -> '[:objects :context | objects select: [:obj | obj third notNil]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})