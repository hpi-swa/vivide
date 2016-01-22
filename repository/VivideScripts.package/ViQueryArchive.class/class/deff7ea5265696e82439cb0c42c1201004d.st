definitions
deff7ea5265696e82439cb0c42c1201004d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#icon -> (((ViIconService doObject: obj) clippedToSize: 32@32) scaledToSize: 64@64).
	#balloonText -> obj selector}]).
(#class -> ViQueryMapDefinition).
(#id -> #'f7ea5265-696e-8243-9cb0-c42c1201004d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#icon -> (((ViIconService doObject: obj) clippedToSize: 32@32) scaledToSize: 64@64).
	#balloonText -> obj selector}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})