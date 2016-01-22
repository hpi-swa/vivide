definitions
defe34d1bb92423d34ea16bf84b0ab7ae75
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> ((ViIconService doObject: obj) ifNil: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'e34d1bb9-2423-d34e-a16b-f84b0ab7ae75').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> ((ViIconService doObject: obj) ifNil: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})