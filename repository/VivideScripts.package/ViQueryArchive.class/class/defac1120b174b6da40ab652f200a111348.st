definitions
defac1120b174b6da40ab652f200a111348
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveInteractive to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveInteractive]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'ac1120b1-74b6-da40-ab65-2f200a111348').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:07:34 am')})).
(#sourceCode -> '[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataPrimitiveInteractive to: value]
		ifFalse: [line key hasCategory: #dataPrimitiveInteractive]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})