definitions
def3d5826639321174b908a2c2ac999a24a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'3d582663-9321-174b-908a-2c2ac999a24a').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:09:25 pm')})).
(#sourceCode -> '[:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})