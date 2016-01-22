definitions
def716229ece92e53478d5c6b521c3d19d5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #signature to: value]
		ifFalse: [line key hasCategory: #signature]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'716229ec-e92e-5347-8d5c-6b521c3d19d5').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:54:14 am')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #signature to: value]
		ifFalse: [line key hasCategory: #signature]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})