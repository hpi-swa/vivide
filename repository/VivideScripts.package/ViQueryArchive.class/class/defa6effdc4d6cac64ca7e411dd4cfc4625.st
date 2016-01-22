definitions
defa6effdc4d6cac64ca7e411dd4cfc4625
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:assoc | (assoc value listAtCategoryNamed: assoc key)
	collect: [:nm | Smalltalk at: nm]]).
(#class -> ViQueryMapDefinition).
(#id -> #'a6effdc4-d6ca-c64c-a7e4-11dd4cfc4625').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:26:16 pm')})).
(#sourceCode -> '[:assoc | (assoc value listAtCategoryNamed: assoc key)
	collect: [:nm | Smalltalk at: nm]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})