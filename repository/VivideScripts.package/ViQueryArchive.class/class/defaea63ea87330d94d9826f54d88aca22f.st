definitions
defaea63ea87330d94d9826f54d88aca22f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | (step steps collect: [:s | s definition ifNotNil: [:def | def category ifNil: #default]] thenSelect: [:cat | cat notNil]) asSet asArray asString]).
(#class -> ViQueryMapDefinition).
(#id -> #'aea63ea8-7330-d94d-9826-f54d88aca22f').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 11:18:20 am')})).
(#sourceCode -> '[:step | (step steps collect: [:s | s definition ifNotNil: [:def | def category ifNil: #default]] thenSelect: [:cat | cat notNil]) asSet asArray asString]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})