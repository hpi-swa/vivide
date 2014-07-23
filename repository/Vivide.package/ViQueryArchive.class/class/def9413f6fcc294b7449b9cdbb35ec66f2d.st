definitions
def9413f6fcc294b7449b9cdbb35ec66f2d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 January 2014 11:38:48 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'9413f6fc-c294-b744-9b9c-dbb35ec66f2d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: ''override'' caseSensitive: false) ifTrue: [Color red muchLighter paler] ifFalse: [])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: 'override' caseSensitive: false) ifTrue: [Color red muchLighter paler] ifFalse: [])}]); yourself)