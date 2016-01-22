definitions
def9c7d2184d97f0a4fa361192c038a7b1c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [Smalltalk classNames
	select: [:nm | nm beginsWith: #ConfigurationOf]
	thenCollect: [:nm | (Smalltalk at: nm) project]]).
(#class -> ViQueryMapDefinition).
(#id -> #'9c7d2184-d97f-0a4f-a361-192c038a7b1c').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[Smalltalk classNames
	select: [:nm | nm beginsWith: #ConfigurationOf]
	thenCollect: [:nm | (Smalltalk at: nm) project]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})