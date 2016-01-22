definitions
defc2f8f931ca174e4cbcca2d77e7ab06db
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #return to: value]
		ifFalse: [line key hasCategory: #return]]}]).
(#class -> ViQueryMapDefinition).
(#id -> #'c2f8f931-ca17-4e4c-bcca-2d77e7ab06db').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 1:06:18 pm')})).
(#sourceCode -> '[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #return to: value]
		ifFalse: [line key hasCategory: #return]]}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})