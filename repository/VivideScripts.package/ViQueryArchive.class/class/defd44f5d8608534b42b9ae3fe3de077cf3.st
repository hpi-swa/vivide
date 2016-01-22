definitions
defd44f5d8608534b42b9ae3fe3de077cf3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callModel to: value]
		ifFalse: [line key hasCategory: #callModel]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'d44f5d86-0853-4b42-b9ae-3fe3de077cf3').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:44:15 am')})).
(#sourceCode -> '[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callModel to: value]
		ifFalse: [line key hasCategory: #callModel]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})