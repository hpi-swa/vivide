definitions
def595f22af5b39df4782fcbfe9343c2c57
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref | {
	#text -> (ViLabelService doObject: ref).
	#icon -> (ViIconService doObject: ref).
	#color -> (ref isSymbol ifTrue: [Color gray: 0.85] ifFalse: [])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'595f22af-5b39-df47-82fc-bfe9343c2c57').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ref | {
	#text -> (ViLabelService doObject: ref).
	#icon -> (ViIconService doObject: ref).
	#color -> (ref isSymbol ifTrue: [Color gray: 0.85] ifFalse: [])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})