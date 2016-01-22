definitions
def1476734773dab249817d740c37a6ba4d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackModel to: value]
		ifFalse: [line key hasCategory: #setupCallbackModel]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'14767347-73da-b249-817d-740c37a6ba4d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:11:39 pm')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackModel to: value]
		ifFalse: [line key hasCategory: #setupCallbackModel]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})