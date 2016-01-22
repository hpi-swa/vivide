definitions
deffd572dfd7602ae44b123a3d198f338b0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:part | part isQueryStep ifTrue: ['Steps'] ifFalse: ['Definitions']]).
(#class -> ViQueryMapDefinition).
(#id -> #'fd572dfd-7602-ae44-b123-a3d198f338b0').
(#inputKind -> ViAbstractQueryPart).
(#mapType -> #each).
(#outputKind -> String).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 12:04:52 pm')})).
(#sourceCode -> '[:part | part isQueryStep ifTrue: [''Steps''] ifFalse: [''Definitions'']]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})