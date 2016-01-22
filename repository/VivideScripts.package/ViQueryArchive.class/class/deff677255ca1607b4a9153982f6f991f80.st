definitions
deff677255ca1607b4a9153982f6f991f80
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUi to: value]
		ifFalse: [line key hasCategory: #callUi]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'f677255c-a160-7b4a-9153-982f6f991f80').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:53:40 am')})).
(#sourceCode -> '[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUi to: value]
		ifFalse: [line key hasCategory: #callUi]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})