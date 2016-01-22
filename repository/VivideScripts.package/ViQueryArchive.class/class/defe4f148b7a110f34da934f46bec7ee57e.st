definitions
defe4f148b7a110f34da934f46bec7ee57e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callSelf to: value]
		ifFalse: [line key hasCategory: #callSelf]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'e4f148b7-a110-f34d-a934-f46bec7ee57e').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:57:43 pm')})).
(#sourceCode -> '[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callSelf to: value]
		ifFalse: [line key hasCategory: #callSelf]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})