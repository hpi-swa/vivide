definitions
def46d592491c70d0428d2cc784959fd192
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackHelper to: value]
		ifFalse: [line key hasCategory: #setupCallbackHelper]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'46d59249-1c70-d042-8d2c-c784959fd192').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:10:45 pm')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackHelper to: value]
		ifFalse: [line key hasCategory: #setupCallbackHelper]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})