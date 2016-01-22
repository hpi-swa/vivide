definitions
def6a694a4e65b579429697978ac471ca74
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #other to: value]
		ifFalse: [line key hasCategory: #other]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'6a694a4e-65b5-7942-9697-978ac471ca74').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 2:48:40 pm')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #other to: value]
		ifFalse: [line key hasCategory: #other]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})