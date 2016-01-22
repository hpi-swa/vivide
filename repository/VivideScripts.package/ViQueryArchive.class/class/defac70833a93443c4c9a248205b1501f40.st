definitions
defac70833a93443c4c9a248205b1501f40
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelAdditional to: value]
		ifFalse: [line key hasCategory: #dataModelAdditional]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'ac70833a-9344-3c4c-9a24-8205b1501f40').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:55 pm')})).
(#sourceCode -> '[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelAdditional to: value]
		ifFalse: [line key hasCategory: #dataModelAdditional]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})