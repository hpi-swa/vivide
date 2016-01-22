definitions
def2d539c1bdf9b604eae8d70eff84ca13e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> ((ViLabelStringService doObject: obj value) truncateWithElipsisTo: 30).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'2d539c1b-df9b-604e-ae8d-70eff84ca13e').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:36:49 am')})).
(#sourceCode -> '[:obj | {
	#text -> ((ViLabelStringService doObject: obj value) truncateWithElipsisTo: 30).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})