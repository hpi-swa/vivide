definitions
def5ac85d371b76e741892a74402b5cc58e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'5ac85d37-1b76-e741-892a-74402b5cc58e').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:14 pm')})).
(#sourceCode -> '[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})