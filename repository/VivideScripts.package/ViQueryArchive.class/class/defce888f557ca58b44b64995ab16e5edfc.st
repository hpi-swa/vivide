definitions
defce888f557ca58b44b64995ab16e5edfc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs select: [:step | step nextLabel notNil]]).
(#class -> ViQueryMapDefinition).
(#id -> #'ce888f55-7ca5-8b44-b649-95ab16e5edfc').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:35:47 pm')})).
(#sourceCode -> '[:objs | objs select: [:step | step nextLabel notNil]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})