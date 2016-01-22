definitions
defbd23428f5e248b4ea1daf1a684f38d81
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | #icon -> ((obj at: #public) ifTrue: [] ifFalse: [UiFugueIcons eyeIcon])]).
(#class -> ViQueryMapDefinition).
(#id -> #'bd23428f-5e24-8b4e-a1da-f1a684f38d81').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 September 2013 8:01 am')})).
(#sourceCode -> '[:obj | #icon -> ((obj at: #public) ifTrue: [] ifFalse: [UiFugueIcons eyeIcon])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})