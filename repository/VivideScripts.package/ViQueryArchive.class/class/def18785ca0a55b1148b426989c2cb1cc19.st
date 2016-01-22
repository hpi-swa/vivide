definitions
def18785ca0a55b1148b426989c2cb1cc19
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #check to: value]
		ifFalse: [line key hasCategory: #check]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'18785ca0-a55b-1148-b426-989c2cb1cc19').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:56:38 am')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #check to: value]
		ifFalse: [line key hasCategory: #check]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})