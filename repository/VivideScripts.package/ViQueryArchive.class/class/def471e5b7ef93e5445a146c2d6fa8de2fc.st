definitions
def471e5b7ef93e5445a146c2d6fa8de2fc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackUi to: value]
		ifFalse: [line key hasCategory: #setupCallbackUi]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'471e5b7e-f93e-5445-a146-c2d6fa8de2fc').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:53:24 am')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackUi to: value]
		ifFalse: [line key hasCategory: #setupCallbackUi]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})