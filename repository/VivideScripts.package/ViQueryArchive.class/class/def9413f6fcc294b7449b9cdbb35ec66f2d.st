definitions
def9413f6fcc294b7449b9cdbb35ec66f2d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: 'override' caseSensitive: false) ifTrue: [Color red muchLighter paler] ifFalse: [])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'9413f6fc-c294-b744-9b9c-dbb35ec66f2d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:38:48 am')})).
(#sourceCode -> '[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: ''override'' caseSensitive: false) ifTrue: [Color red muchLighter paler] ifFalse: [])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})