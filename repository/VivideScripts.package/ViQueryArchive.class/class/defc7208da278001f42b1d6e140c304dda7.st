definitions
defc7208da278001f42b1d6e140c304dda7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveConstant to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveConstant]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'c7208da2-7800-1f42-b1d6-e140c304dda7').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:04:38 am')})).
(#sourceCode -> '[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveConstant to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveConstant]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})