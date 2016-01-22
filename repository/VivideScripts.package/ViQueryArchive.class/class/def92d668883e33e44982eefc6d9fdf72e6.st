definitions
def92d668883e33e44982eefc6d9fdf72e6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ViLabelService doObject: obj value).
	#icon -> ((ViIconService doObject: obj value) ifNil: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'92d66888-3e33-e449-82ee-fc6d9fdf72e6').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (ViLabelService doObject: obj value).
	#icon -> ((ViIconService doObject: obj value) ifNil: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})