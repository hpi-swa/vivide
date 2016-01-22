definitions
defb9f8c25a20b95146a00ed518fa163d93
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref | #text -> (ref isSymbol ifTrue: [''] ifFalse: [ref category])]).
(#class -> ViQueryMapDefinition).
(#id -> #'b9f8c25a-20b9-5146-a00e-d518fa163d93').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ref | #text -> (ref isSymbol ifTrue: [''''] ifFalse: [ref category])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})