definitions
defe56dcef11fe04645b354b85dc88c7cf7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'e56dcef1-1fe0-4645-b354-b85dc88c7cf7').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:29 pm')})).
(#sourceCode -> '[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})