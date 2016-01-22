definitions
defa66f00c922cb0a48a223d73699b16746
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ViLabelService doObject: obj value class).
	#icon -> ((ViIconService doObject: obj value class) ifNil: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'a66f00c9-22cb-0a48-a223-d73699b16746').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 1:08:17 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (ViLabelService doObject: obj value class).
	#icon -> ((ViIconService doObject: obj value class) ifNil: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})