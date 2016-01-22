definitions
def90e36e33cecf6c4ab7a90c4f6192bed2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ViLabelService doObject: obj method).
	#icon -> ((ViIconService doObject: obj method) ifNil: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'90e36e33-cecf-6c4a-b7a9-0c4f6192bed2').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (ViLabelService doObject: obj method).
	#icon -> ((ViIconService doObject: obj method) ifNil: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})